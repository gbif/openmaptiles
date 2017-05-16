#!/usr/bin/python2
"""make-tile-generation-messages.py sends tile generation request messages to RabbitMQ.

This script is intended to be run directly.

    make-tile-generation-messages.py -c config.json --mq-host mq.gbif.org --mq-user xx --mq-pass xx --mq-vhost /users/mblissett -l EPSG:4326 --queue tiles-laea 0 1 2 3 4
"""

from sys import stderr, path
from os.path import realpath, dirname, exists
from optparse import OptionParser
from urlparse import urlparse
from urllib import urlopen

try:
    from json import dump as json_dump
    from json import load as json_load
    from json import dumps as json_dumps
    from json import loads as json_loads
except ImportError:
    from simplejson import dump as json_dump
    from simplejson import load as json_load

import subprocess
import time
import urllib2

from ModestMaps.Core import Point

#
# Most imports can be found below, after the --include-path option is known.
#

parser = OptionParser(usage="""%prog [options] [zoom...]

Makes tile generation messages and sends them to RabbitMQ.

Example:

    make-tile-generation-messages.py -c config.json -l EPSG:4326 --queue tiles-laea 0 1 2 3 4""")

defaults = dict(verbose=False)

parser.set_defaults(**defaults)

parser.add_option('-c', '--config', dest='config',
                  help='Path to configuration file, typically required.')

parser.add_option('-l', '--layer', dest='layer',
                  help='Layer name from configuration, typically required.')

parser.add_option('-i', '--include-path', dest='include_paths',
                  help="Add the following colon-separated list of paths to Python's include path (aka sys.path)")

parser.add_option('--tile-list', dest='tile_list',
                  help='Optional file of tile coordinates, a simple text list of Z/X/Y coordinates.')

parser.add_option('--queue', dest='queue_name',
                  help='RabbitMQ queue name.')

parser.add_option('--mq-host', dest='mq_host',
                  help='RabbitMQ server.')

parser.add_option('--mq-user', dest='mq_user',
                  help='RabbitMQ user name.')

parser.add_option('--mq-pass', dest='mq_pass',
                  help='RabbitMQ password.')

parser.add_option('--mq-vhost', dest='mq_vhost',
                  help='RabbitMQ virtual host.')

def generatePyramid(projection, top_tile, zooms):
    """ Generate a stream of (offset, count, coordinate) tuples for seeding.
    """

    print('Projection', projection)

    if (projection.__class__.__name__ == 'WGS84'):
        print('Skip')
    else:
        bounds_ul = projection.coordinateProj(top_tile)
        bounds_lr = projection.coordinateProj(top_tile.down().right())
        print('Pyramid top tile bounds in projection units', bounds_ul, bounds_lr)

        print bounds_ul.__class__

        pyramid_start = projection.projCoordinate(bounds_ul, zooms[-1])
        pyramid_end   = projection.projCoordinate(bounds_lr, zooms[-1])
        print('Tile grid extent of bottom of pyramid', pyramid_start, pyramid_end)

    # start with a simple total of all the coordinates we will need.
    count = 0

    for zoom in zooms:
        if (projection.__class__.__name__ == 'WGS84'):
            pyramid_start = Coordinate(        0,           0, zoom)
            pyramid_end   = Coordinate(2**zoom-1, 2*2**zoom-1, zoom)
        else:
            pyramid_start = projection.projCoordinate(bounds_ul, zoom)
            pyramid_end   = projection.projCoordinate(bounds_lr, zoom)
            pyramid_end.row = pyramid_end.row - 1
            pyramid_end.column = pyramid_end.column - 1

        columns = pyramid_end.column - pyramid_start.column
        rows = pyramid_end.row - pyramid_start.row

        count += columns * rows

    # now generate the actual coordinates.
    # offset starts at zero
    offset = 0

    for zoom in zooms:
        print projection.__class__.__name__
        if (projection.__class__.__name__ == 'WGS84'):
            pyramid_start = Coordinate(        0,           0, zoom)
            pyramid_end   = Coordinate(2**zoom-1, 2*2**zoom-1, zoom)
        else:
            pyramid_start = projection.projCoordinate(bounds_ul, zoom)
            pyramid_end   = projection.projCoordinate(bounds_lr, zoom)
            pyramid_end.row = pyramid_end.row - 1
            pyramid_end.column = pyramid_end.column - 1

        print('Tile grid extent at zoom '+str(zoom), pyramid_start, pyramid_end)

        for column in xrange(pyramid_start.column, pyramid_end.column+1):
            for row in xrange(pyramid_start.row, pyramid_end.row+1):
                coord = Coordinate(row, column, zoom)

                yield (offset, count, coord)

                offset += 1

def listCoordinates(filename):
    """ Generate a stream of (offset, count, coordinate) tuples for seeding.

        Read coordinates from a file with one Z/X/Y coordinate per line.
    """
    coords = (line.strip().split('/') for line in open(filename, 'r'))
    coords = (map(int, (row, column, zoom)) for (zoom, column, row) in coords)
    coords = [Coordinate(*args) for args in coords]

    count = len(coords)

    for (offset, coord) in enumerate(coords):
        yield (offset, count, coord)

def parseConfig(configpath):
    """ Parse a configuration file and return a raw dictionary and dirpath.

        Return value can be passed to TileStache.Config.buildConfiguration().
    """
    config_dict = json_load(urlopen(configpath))

    scheme, host, path, p, q, f = urlparse(configpath)

    if scheme == '':
        scheme = 'file'
        path = realpath(path)

    dirpath = '%s://%s%s' % (scheme, host, dirname(path).rstrip('/') + '/')

    return config_dict, dirpath

if __name__ == '__main__':
    options, zooms = parser.parse_args()

    if options.include_paths:
        for p in options.include_paths.split(':'):
            path.insert(0, p)

    from TileStache import getTile, Config
    from TileStache.Core import KnownUnknown
    from TileStache.Config import buildConfiguration
    import TileStache
    import pika

    from ModestMaps.Core import Coordinate

    try:
        # determine if we have enough information to prep a config and layer

        if options.config is None:
            raise KnownUnknown('Missing required configuration (--config) parameter.')

        elif options.layer is None:
            raise KnownUnknown('Missing required layer (--layer) parameter.')

        elif options.queue_name is None:
            raise KnownUnknown('Missing required queue name (--queue) parameter.')

        else:
            config_dict, config_dirpath = parseConfig(options.config)

            if options.layer not in config_dict['layers']:
                raise KnownUnknown('"%s" is not a layer I know about. Here are some that I do know about: %s.' % (options.layer, ', '.join(sorted(config_dict['layers'].keys()))))

            layer_dict = config_dict['layers'][options.layer]
            layer_dict['write_cache'] = True # Override to make seeding guaranteed useful.

        # create a real config object

        config = buildConfiguration(config_dict, config_dirpath)
        layer = config.layers[options.layer or 'tiles-layer']

        # do the actual work

        for (i, zoom) in enumerate(zooms):
            if not zoom.isdigit():
                raise KnownUnknown('"%s" is not a valid numeric zoom level.' % zoom)

            zooms[i] = int(zoom)

        tile_list = options.tile_list

        queue_name = options.queue_name

    except KnownUnknown, e:
        parser.error(str(e))

    if tile_list:
        coordinates = listCoordinates(tile_list)
    else:
        top_tile = Coordinate(0, 0, 0)
        coordinates = generatePyramid(layer.projection, top_tile, zooms)

    credentials = pika.PlainCredentials(options.mq_user, options.mq_pass)
    connection = pika.BlockingConnection(pika.ConnectionParameters(options.mq_host, 5672, options.mq_vhost, credentials))
    channel = connection.channel()

    channel.queue_declare(queue=queue_name)

    # Queue stuff
    queued = 0
    waiting = False
    for coordinate in coordinates:
        if (queued % 100000) == 0:
            print (queued, "th", coordinate)

        (offset, count, coord) = coordinate

        if (queued % 100000) == 0 or waiting:
            print (queued, "th", coordinate)

            # This only knows the number of messages in a single queue
            #res = channel.queue_declare(queue=queue_name, passive=True)
            #print 'Messages in queue %d' % res.method.message_count

            #queues = json_load(urlopen("http://xx:xx@mq.gbif.org:15672/api/queues/%2Fusers%2Fmblissett"))
            if subprocess.call('./short-enough') > 0:
                print "Waiting a while, queue is long"
                waiting = True
                time.sleep(5)
            else:
                print "Queue is not too long"
                waiting = False

        data = json_dumps({
            "offset": offset,
            "count": count,
            "coord": {
                "zoom": coord.zoom,
                "col": coord.column,
                "row": coord.row
            }
        })
        channel.basic_publish(exchange='',
                              routing_key=queue_name,
                              body=data)
        queued = queued + 1

    connection.close()
    print ("Completed, queued", queued)
