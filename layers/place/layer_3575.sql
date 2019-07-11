
-- DROP MATERIALIZED VIEW osm_continent_point_3575;
CREATE MATERIALIZED VIEW osm_continent_point_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, name, name_en, name_de, tags FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, name, name_en, name_de, tags FROM osm_continent_point) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

-- DROP MATERIALIZED VIEW osm_country_point_3575;
CREATE MATERIALIZED VIEW osm_country_point_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, rank, name, name_en, name_de, tags FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, rank, name, name_en, name_de, tags FROM osm_country_point) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

-- DROP MATERIALIZED VIEW osm_state_point_3575;
CREATE MATERIALIZED VIEW osm_state_point_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, rank, is_in_country, is_in_country_code, name, name_en, name_de, tags FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, rank, is_in_country, is_in_country_code, name, name_en, name_de, tags FROM osm_state_point) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

-- DROP MATERIALIZED VIEW osm_island_point_3575;
CREATE MATERIALIZED VIEW osm_island_point_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, name, name_en, name_de, tags FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, name, name_en, name_de, tags FROM osm_island_point) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

CREATE MATERIALIZED VIEW osm_island_polygon_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, area, name, name_en, name_de, tags FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, area, name, name_en, name_de, tags FROM osm_island_polygon) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

CREATE INDEX osm_continent_point_3575_idx ON osm_continent_point_3575 USING gist (geometry);
CREATE INDEX osm_country_point_3575_idx ON osm_country_point_3575 USING gist (geometry);
CREATE INDEX osm_state_point_3575_idx ON osm_state_point_3575 USING gist (geometry);
CREATE INDEX osm_island_point_3575_idx ON osm_island_point_3575 USING gist (geometry);

-- etldoc: layer_place[shape=record fillcolor=lightpink, style="rounded,filled",
-- etldoc:     label="layer_place | <z0_3> z0-3|<z4_7> z4-7|<z8_11> z8-11| <z12_14> z12-z14+" ] ;

CREATE OR REPLACE FUNCTION layer_place_3575(bbox geometry, zoom_level int, pixel_width numeric)
RETURNS TABLE(osm_id bigint, geometry geometry, name text, name_en text, name_de text, tags hstore, class text, "rank" int, capital INT) AS $$

    -- etldoc: osm_continent_point -> layer_place:z0_3
    SELECT
        osm_id, geometry, name,
        COALESCE(NULLIF(name_en, ''), name) AS name_en,
        COALESCE(NULLIF(name_de, ''), name) AS name_de,
        tags,
        'continent' AS class, 1 AS "rank", NULL::int AS capital
    FROM osm_continent_point_3575
    WHERE geometry && bbox AND zoom_level < 4
    UNION ALL

    -- etldoc: osm_country_point -> layer_place:z0_3
    -- etldoc: osm_country_point -> layer_place:z4_7
    -- etldoc: osm_country_point -> layer_place:z8_11
    -- etldoc: osm_country_point -> layer_place:z12_14
    SELECT
        osm_id, geometry, name,
        COALESCE(NULLIF(name_en, ''), name) AS name_en,
        COALESCE(NULLIF(name_de, ''), name) AS name_de,
        tags,
        'country' AS class, "rank", NULL::int AS capital
    FROM osm_country_point_3575
    WHERE geometry && bbox AND "rank" <= zoom_level + 1 AND name <> ''
    UNION ALL

    -- etldoc: osm_state_point  -> layer_place:z0_3
    -- etldoc: osm_state_point  -> layer_place:z4_7
    -- etldoc: osm_state_point  -> layer_place:z8_11
    -- etldoc: osm_state_point  -> layer_place:z12_14
    SELECT
        osm_id, geometry, name,
        COALESCE(NULLIF(name_en, ''), name) AS name_en,
        COALESCE(NULLIF(name_de, ''), name) AS name_de,
        tags,
        'state' AS class, "rank", NULL::int AS capital
    FROM osm_state_point_3575
    WHERE geometry && bbox AND
          name <> '' AND
          ("rank" + 2 <= zoom_level) AND (
              zoom_level >= 5 OR
              is_in_country IN ('United Kingdom', 'USA', 'Россия', 'Brasil', 'China', 'India') OR
              is_in_country_code IN ('AU', 'CN', 'IN', 'BR', 'US'))
    UNION ALL

    -- etldoc: osm_island_point    -> layer_place:z12_14
    SELECT
        osm_id, geometry, name,
        COALESCE(NULLIF(name_en, ''), name) AS name_en,
        COALESCE(NULLIF(name_de, ''), name) AS name_de,
        tags,
        'island' AS class, 7 AS "rank", NULL::int AS capital
    FROM osm_island_point_3575
    WHERE zoom_level >= 12
        AND geometry && bbox
    UNION ALL

    -- etldoc: osm_island_polygon  -> layer_place:z8_11
    -- etldoc: osm_island_polygon  -> layer_place:z12_14
    SELECT
        osm_id, geometry, name,
        COALESCE(NULLIF(name_en, ''), name) AS name_en,
        COALESCE(NULLIF(name_de, ''), name) AS name_de,
	tags,
        'island' AS class, island_rank(area) AS "rank", NULL::int AS capital
    FROM osm_island_polygon_3575
    WHERE geometry && bbox AND
        ((zoom_level = 8 AND island_rank(area) <= 3)
        OR (zoom_level = 9 AND island_rank(area) <= 4)
        OR (zoom_level >= 10))
    UNION ALL

    -- etldoc: layer_city          -> layer_place:z0_3
    -- etldoc: layer_city          -> layer_place:z4_7
    -- etldoc: layer_city          -> layer_place:z8_11
    -- etldoc: layer_city          -> layer_place:z12_14
    SELECT
        osm_id, geometry, name, name_en, name_de, tags,
        place::text AS class, "rank", capital
    FROM layer_city_3575(bbox, zoom_level, pixel_width)
    -- FROM osm_city_point_3575
    ORDER BY "rank" ASC
$$ LANGUAGE SQL IMMUTABLE;
