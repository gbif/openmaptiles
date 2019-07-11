CREATE OR REPLACE FUNCTION water_class(waterway TEXT) RETURNS TEXT AS $$
    SELECT CASE WHEN waterway='' THEN 'lake' ELSE 'river' END;
$$ LANGUAGE SQL IMMUTABLE;



DROP VIEW IF EXISTS water_z0_3575;
CREATE VIEW water_z0_3575 AS (
    -- etldoc:  ne_110m_ocean ->  water_z0
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 0 AND min_area >= 256000000
    UNION ALL
    -- etldoc:  ne_110m_lakes ->  water_z0
    SELECT geometry, 'lake'::text AS class FROM ne_110m_lakes
);

DROP VIEW IF EXISTS water_z1_3575;
CREATE VIEW water_z1_3575 AS (
    -- etldoc:  ne_110m_ocean ->  water_z1
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 1 AND min_area >= 64000000
    UNION ALL
    -- etldoc:  ne_110m_lakes ->  water_z1
    SELECT geometry, 'lake'::text AS class FROM ne_110m_lakes
);

DROP VIEW IF EXISTS water_z2_3575;
CREATE VIEW water_z2_3575 AS (
    -- etldoc:  ne_50m_ocean ->  water_z2
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 2 AND min_area >= 16000000
    UNION ALL
    -- etldoc:  ne_50m_lakes ->  water_z2
    SELECT geometry, 'lake'::text AS class FROM ne_50m_lakes
);

DROP VIEW IF EXISTS water_z3_3575;
CREATE VIEW water_z3_3575 AS (
    -- etldoc:  ne_50m_ocean ->  water_z3
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 3 AND min_area >= 4000000
    UNION ALL
    -- etldoc:  ne_50m_lakes ->  water_z3
    SELECT geometry, 'lake'::text AS class FROM ne_50m_lakes
);

DROP VIEW IF EXISTS water_z4_3575;
CREATE VIEW water_z4_3575 AS (
    -- etldoc:  ne_50m_ocean ->  water_z4
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 4 AND min_area >= 1000000
    UNION ALL
    -- etldoc:  ne_50m_lakes ->  water_z4
    SELECT geometry, 'lake'::text AS class FROM ne_50m_lakes
);

DROP VIEW IF EXISTS water_z5_3575;
CREATE VIEW water_z5_3575 AS (
    -- etldoc:  ne_10m_ocean ->  water_z5
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 5 AND min_area >= 250000
    UNION ALL
    -- etldoc:  ne_10m_lakes ->  water_z5
    SELECT geometry, 'lake'::text AS class FROM ne_10m_lakes
);

DROP VIEW IF EXISTS water_z6_3575;
CREATE VIEW water_z6_3575 AS (
    -- etldoc:  ne_10m_ocean ->  water_z6
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 6 AND min_area >= 40000
    UNION ALL
   -- etldoc:  osm_water_polygon_gen6 ->  water_z6
    SELECT geometry, 'lake' AS class FROM osm_water_polygon_gen5
);

DROP VIEW IF EXISTS water_z7_3575;
CREATE VIEW water_z7_3575 AS (
    -- etldoc:  ne_10m_ocean ->  water_z7
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 7 AND min_area >= 10000
    UNION ALL
    -- etldoc:  osm_water_polygon_gen5 ->  water_z7
    SELECT geometry, 'lake' AS class FROM osm_water_polygon_gen5
);

DROP VIEW IF EXISTS water_z8_3575;
CREATE VIEW water_z8_3575 AS (
    -- etldoc:  osm_ocean_polygon_gen4 ->  water_z8
    SELECT geometry, 'ocean'::text AS class FROM split_water_polygons_3575 WHERE zoom = 8 AND min_area >= 2500
    UNION ALL
    -- etldoc:  osm_water_polygon_gen4 ->  water_z8
    SELECT geometry, 'lake'::text AS class FROM osm_water_polygon_gen4
);

-- CREATE TABLE north_osm_land_polygons_gen4 AS SELECT ST_MakeValid(ST_Simplify(geometry, 160)) AS geometry FROM north_osm_land_polygons_3575;
-- CREATE TABLE north_osm_land_polygons_gen3 AS SELECT ST_MakeValid(ST_Simplify(geometry,  80)) AS geometry FROM north_osm_land_polygons_3575;
-- CREATE TABLE north_osm_land_polygons_gen2 AS SELECT ST_MakeValid(ST_Simplify(geometry,  40)) AS geometry FROM north_osm_land_polygons_3575;
-- CREATE TABLE north_osm_land_polygons_gen1 AS SELECT ST_MakeValid(ST_Simplify(geometry,  20)) AS geometry FROM north_osm_land_polygons_3575;

DROP VIEW IF EXISTS water_z9_3575;
CREATE VIEW water_z9_3575 AS (
    -- etldoc:  osm_ocean_polygon_gen3 ->  water_z9
--    SELECT geometry, 'ocean'::text AS class FROM north_osm_land_polygons_gen2
--    UNION ALL
    -- etldoc:  osm_water_polygon_gen3 ->  water_z9
    SELECT geometry, 'lake'::text AS class FROM osm_water_polygon_gen3
);


DROP VIEW IF EXISTS water_z10_3575;
CREATE VIEW water_z10_3575 AS (
    -- etldoc:  osm_ocean_polygon_gen2 ->  water_z10
--    SELECT geometry, 'ocean'::text AS class FROM north_osm_land_polygons_gen2
--    UNION ALL
    -- etldoc:  osm_water_polygon_gen2 ->  water_z10
    SELECT geometry, 'lake'::text AS class FROM osm_water_polygon_gen2
);

DROP VIEW IF EXISTS water_z11_3575;
CREATE VIEW water_z11_3575 AS (
    -- etldoc:  osm_ocean_polygon_gen1 ->  water_z11
--    SELECT geometry, 'ocean'::text AS class FROM north_osm_land_polygons_gen2
--    UNION ALL
    -- etldoc:  osm_water_polygon_gen1 ->  water_z11
    SELECT geometry, water_class(waterway) AS class FROM osm_water_polygon_gen1
);

DROP VIEW IF EXISTS water_z12_3575;
CREATE VIEW water_z12_3575 AS (
    -- etldoc:  osm_ocean_polygon_gen1 ->  water_z12
--    SELECT geometry, 'ocean'::text AS class FROM north_osm_land_polygons_gen1
--    UNION ALL
    -- etldoc:  osm_water_polygon ->  water_z12
    SELECT geometry, water_class(waterway) AS class FROM osm_water_polygon
);

DROP VIEW IF EXISTS water_z13_3575;
CREATE VIEW water_z13_3575 AS (
    -- etldoc:  osm_ocean_polygon ->  water_z13
--    SELECT st_makevalid AS geometry, 'ocean'::text AS class FROM north_osm_land_polygons_3575
--    UNION ALL
    -- etldoc:  osm_water_polygon ->  water_z13
    SELECT geometry, water_class(waterway) AS class FROM osm_water_polygon WHERE area > 4.0e-7
);

DROP VIEW IF EXISTS water_z14_3575;
CREATE VIEW water_z14_3575 AS (
    -- etldoc:  osm_ocean_polygon ->  water_z14
--    SELECT st_makevalid AS geometry, 'ocean'::text AS class FROM north_osm_land_polygons_3575
--    UNION ALL
    -- etldoc:  osm_water_polygon ->  water_z14
    SELECT geometry, water_class(waterway) AS class FROM osm_water_polygon
);

-- etldoc: layer_water [shape=record fillcolor=lightpink, style="rounded,filled",
-- etldoc:     label="layer_water |<z0> z0|<z1>z1|<z2>z2|<z3>z3 |<z4> z4|<z5>z5|<z6>z6|<z7>z7| <z8> z8 |<z9> z9 |<z10> z10 |<z11> z11 |<z12> z12|<z13> z13|<z14_> z14+" ] ;

DROP FUNCTION IF EXISTS layer_water_3575 (bbox geometry, zoom_level int);
CREATE OR REPLACE FUNCTION layer_water_3575 (bbox geometry, zoom_level int)
RETURNS TABLE(geometry geometry, class text) AS $$
    SELECT geometry, class::text FROM (
        -- etldoc: water_z0 ->  layer_water:z0
        SELECT * FROM water_z0_3575 WHERE zoom_level = 0
        UNION ALL
        -- etldoc: water_z1 ->  layer_water:z1
        SELECT * FROM water_z1_3575 WHERE zoom_level = 1
        UNION ALL
        -- etldoc: water_z2 ->  layer_water:z2
        SELECT * FROM water_z2_3575 WHERE zoom_level = 2
        UNION ALL
        -- etldoc: water_z2 ->  layer_water:z3
        SELECT * FROM water_z3_3575 WHERE zoom_level = 3
        UNION ALL
        -- etldoc: water_z4 ->  layer_water:z4
        SELECT * FROM water_z4_3575 WHERE zoom_level = 4
        UNION ALL
        -- etldoc: water_z5 ->  layer_water:z5
        SELECT * FROM water_z5_3575 WHERE zoom_level = 5
        UNION ALL
        -- etldoc: water_z6 ->  layer_water:z6
        SELECT * FROM water_z6_3575 WHERE zoom_level = 6
        UNION ALL
        -- etldoc: water_z7 ->  layer_water:z7
        SELECT * FROM water_z7_3575 WHERE zoom_level = 7
        UNION ALL
        -- etldoc: water_z8 ->  layer_water:z8
        SELECT * FROM water_z8_3575 WHERE zoom_level = 8
        UNION ALL
        -- etldoc: water_z9 ->  layer_water:z9
        SELECT * FROM water_z9_3575 WHERE zoom_level = 9
        UNION ALL
        SELECT * FROM (SELECT COALESCE(ST_Difference(bbox, ST_Union(ST_Intersection(geometry, bbox))), bbox) AS geometry, 'ocean'::text FROM north_osm_land_polygons_gen2 WHERE geometry && bbox) x WHERE zoom_level = 9
        UNION ALL
        -- etldoc: water_z10 ->  layer_water:z10
        SELECT * FROM water_z10_3575 WHERE zoom_level = 10
        UNION ALL
        SELECT * FROM (SELECT COALESCE(ST_Difference(bbox, ST_Union(ST_Intersection(geometry, bbox))), bbox) AS geometry, 'ocean'::text FROM north_osm_land_polygons_gen2 WHERE geometry && bbox) x WHERE zoom_level = 10
        UNION ALL
        -- etldoc: water_z11 ->  layer_water:z11
        SELECT * FROM water_z11_3575 WHERE zoom_level = 11
        UNION ALL
        SELECT * FROM (SELECT COALESCE(ST_Difference(bbox, ST_Union(ST_Intersection(geometry, bbox))), bbox) AS geometry, 'ocean'::text FROM north_osm_land_polygons_gen2 WHERE geometry && bbox) x WHERE zoom_level = 11
        UNION ALL
        -- etldoc: water_z12 ->  layer_water:z12
        SELECT * FROM water_z12_3575 WHERE zoom_level = 12
        UNION ALL
        SELECT * FROM (SELECT COALESCE(ST_Difference(bbox, ST_Union(ST_Intersection(geometry, bbox))), bbox) AS geometry, 'ocean'::text FROM north_osm_land_polygons_gen1 WHERE geometry && bbox) x WHERE zoom_level = 12
        UNION ALL
        -- etldoc: water_z13 ->  layer_water:z13
        SELECT * FROM water_z13_3575 WHERE zoom_level = 13
        UNION ALL
        SELECT * FROM (SELECT COALESCE(ST_Difference(bbox, ST_Union(ST_Intersection(geometry, bbox))), bbox) AS geometry, 'ocean'::text FROM north_osm_land_polygons_3575 WHERE geometry && bbox) x WHERE zoom_level = 13
        UNION ALL
        -- etldoc: water_z14 ->  layer_water:z14_
        SELECT * FROM water_z14_3575 WHERE zoom_level >= 14
        UNION ALL
        SELECT * FROM (SELECT COALESCE(ST_Difference(bbox, ST_Union(ST_Intersection(geometry, bbox))), bbox) AS geometry, 'ocean'::text FROM north_osm_land_polygons_3575 WHERE geometry && bbox) x WHERE zoom_level >= 14
    ) AS zoom_levels
    WHERE geometry && bbox;
$$ LANGUAGE SQL IMMUTABLE;
