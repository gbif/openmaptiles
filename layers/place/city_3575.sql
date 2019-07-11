
-- DROP MATERIALIZED VIEW osm_city_point_3575;
CREATE MATERIALIZED VIEW osm_city_point_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, name, name_en, name_de, tags, place, population, rank, capital FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, name, name_en, name_de, tags, place, population, rank, capital FROM osm_city_point) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

CREATE INDEX osm_city_point_3575_idx ON osm_city_point_3575 USING gist (geometry);

-- etldoc: layer_city[shape=record fillcolor=lightpink, style="rounded,filled",
-- etldoc:     label="layer_city | <z2_14> z2-z14+" ] ;

-- etldoc: osm_city_point -> layer_city:z2_14
CREATE OR REPLACE FUNCTION layer_city_3575(bbox geometry, zoom_level int, pixel_width numeric)
RETURNS TABLE(osm_id bigint, geometry geometry, name text, name_en text, name_de text, tags hstore, place city_place, "rank" int, capital int) AS $$
    SELECT osm_id, geometry, name,
    COALESCE(NULLIF(name_en, ''), name) AS name_en,
    COALESCE(NULLIF(name_de, ''), name) AS name_de,
    tags,
    place, "rank", normalize_capital_level(capital) AS capital
    FROM osm_city_point_3575
    WHERE geometry && bbox
      AND ((zoom_level = 2 AND "rank" = 1)
        OR (zoom_level BETWEEN 3 AND 7 AND "rank" <= zoom_level + 1)
      )
    UNION ALL
    SELECT osm_id, geometry, name,
        COALESCE(NULLIF(name_en, ''), name) AS name_en,
        COALESCE(NULLIF(name_de, ''), name) AS name_de,
        tags,
        place,
        COALESCE("rank", gridrank + 10),
        normalize_capital_level(capital) AS capital
    FROM (
      SELECT osm_id, geometry, name,
      COALESCE(NULLIF(name_en, ''), name) AS name_en,
      COALESCE(NULLIF(name_de, ''), name) AS name_de,
      tags,
      place, "rank", capital,
      row_number() OVER (
        PARTITION BY LabelGrid(geometry, 128 * pixel_width)
        ORDER BY "rank" ASC NULLS LAST,
        place ASC NULLS LAST,
        population DESC NULLS LAST,
        length(name) ASC
      )::int AS gridrank
        FROM osm_city_point_3575
        WHERE geometry && bbox
          AND ((zoom_level = 8 AND place <= 'town'::city_place
            OR (zoom_level BETWEEN 9 AND 10 AND place <= 'village'::city_place)

            OR (zoom_level BETWEEN 11 AND 13 AND place <= 'suburb'::city_place)
            OR (zoom_level >= 14)
          ))
    ) AS ranked_places
    WHERE (zoom_level = 8 AND (gridrank <= 4 OR "rank" IS NOT NULL))
       OR (zoom_level = 9 AND (gridrank <= 8 OR "rank" IS NOT NULL))
       OR (zoom_level = 10 AND (gridrank <= 12 OR "rank" IS NOT NULL))
       OR (zoom_level BETWEEN 11 AND 12 AND (gridrank <= 14 OR "rank" IS NOT NULL))
       OR (zoom_level >= 13);
$$ LANGUAGE SQL IMMUTABLE;
