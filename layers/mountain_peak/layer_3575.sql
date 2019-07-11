
-- etldoc: layer_mountain_peak[shape=record fillcolor=lightpink,
-- etldoc:     style="rounded,filled", label="layer_mountain_peak | <z7_> z7+" ] ;

-- DROP MATERIALIZED VIEW osm_peak_point_3575;
CREATE MATERIALIZED VIEW osm_peak_point_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, name, name_en, name_de, tags, ele, wikipedia FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, name, name_en, name_de, tags, ele, wikipedia FROM osm_peak_point) AS t WHERE NOT ST_IsEmpty(t.geometry);

CREATE INDEX osm_peak_point_3575_idx ON osm_peak_point_3575 USING gist (geometry);

CREATE OR REPLACE FUNCTION layer_mountain_peak_3575(bbox geometry, zoom_level integer, pixel_width numeric)
RETURNS TABLE(osm_id bigint, geometry geometry, name text, name_en text, name_de text, tags hstore, ele int, ele_ft int, "rank" int) AS $$
   -- etldoc: osm_peak_point -> layer_mountain_peak:z7_
   SELECT osm_id, geometry, name, name_en, name_de, tags, ele::int, ele_ft::int, rank::int
   FROM (
     SELECT osm_id, geometry, name,
     COALESCE(NULLIF(name_en, ''), name) AS name_en,
     COALESCE(NULLIF(name_de, ''), name, name_en) AS name_de,
     tags,
     substring(ele from E'^(-?\\d+)(\\D|$)')::int AS ele,
     round(substring(ele from E'^(-?\\d+)(\\D|$)')::int*3.2808399)::int AS ele_ft,
       row_number() OVER (
           PARTITION BY LabelGrid(geometry, 100 * pixel_width)
           ORDER BY (
             substring(ele from E'^(-?\\d+)(\\D|$)')::int +
             (CASE WHEN NULLIF(wikipedia, '') is not null THEN 10000 ELSE 0 END) +
             (CASE WHEN NULLIF(name, '') is not null THEN 10000 ELSE 0 END)
           ) DESC
       )::int AS "rank"
     FROM osm_peak_point_3575
     WHERE geometry && bbox AND ele is not null AND ele ~ E'^-?\\d+'
   ) AS ranked_peaks
   WHERE zoom_level >= 7 AND (rank <= 5 OR zoom_level >= 14)
   ORDER BY "rank" ASC;

$$ LANGUAGE SQL IMMUTABLE;
