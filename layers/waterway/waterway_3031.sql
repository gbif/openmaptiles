-- 3301 views, cut off at Equator

CREATE MATERIALIZED VIEW waterway_z3_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z3 WHERE ST_IsValid(geometry)) AS t;
CREATE MATERIALIZED VIEW waterway_z4_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z4 WHERE ST_IsValid(geometry)) AS t;
CREATE MATERIALIZED VIEW waterway_z6_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z6 WHERE ST_IsValid(geometry)) AS t;
CREATE MATERIALIZED VIEW waterway_z9_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z9 WHERE ST_IsValid(geometry)) AS t;
CREATE MATERIALIZED VIEW waterway_z10_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z10 WHERE ST_IsValid(geometry)) AS t;
CREATE MATERIALIZED VIEW waterway_z11_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z11 WHERE ST_IsValid(geometry)) AS t;
CREATE MATERIALIZED VIEW waterway_z12_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z12 WHERE ST_IsValid(geometry)) AS t;
CREATE MATERIALIZED VIEW waterway_z13_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z13 WHERE ST_IsValid(geometry)) AS t;
CREATE MATERIALIZED VIEW waterway_z14_3031 AS SELECT (ST_Dump(ST_MakeValid(ST_Transform(t.geometry,3031)))).geom AS geometry, t.class AS class, t.name AS name, t.name_en AS name_en FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 0,-180 -90,180 -90,180 0,178 0,176 0,174 0,172 0,170 0,168 0,166 0,164 0,162 0,160 0,158 0,156 0,154 0,152 0,150 0,148 0,146 0,144 0,142 0,140 0,138 0,136 0,134 0,132 0,130 0,128 0,126 0,124 0,122 0,120 0,118 0,116 0,114 0,112 0,110 0,108 0,106 0,104 0,102 0,100 0,98 0,96 0,94 0,92 0,90 0,88 0,86 0,84 0,82 0,80 0,78 0,76 0,74 0,72 0,70 0,68 0,66 0,64 0,62 0,60 0,58 0,56 0,54 0,52 0,50 0,48 0,46 0,44 0,42 0,40 0,38 0,36 0,34 0,32 0,30 0,28 0,26 0,24 0,22 0,20 0,18 0,16 0,14 0,12 0,10 0,8 0,6 0,4 0,2 0,0 0,-2 0,-4 0,-6 0,-8 0,-10 0,-12 0,-14 0,-16 0,-18 0,-20 0,-22 0,-24 0,-26 0,-28 0,-30 0,-32 0,-34 0,-36 0,-38 0,-40 0,-42 0,-44 0,-46 0,-48 0,-50 0,-52 0,-54 0,-56 0,-58 0,-60 0,-62 0,-64 0,-66 0,-68 0,-70 0,-72 0,-74 0,-76 0,-78 0,-80 0,-82 0,-84 0,-86 0,-88 0,-90 0,-92 0,-94 0,-96 0,-98 0,-100 0,-102 0,-104 0,-106 0,-108 0,-110 0,-112 0,-114 0,-116 0,-118 0,-120 0,-122 0,-124 0,-126 0,-128 0,-130 0,-132 0,-134 0,-136 0,-138 0,-140 0,-142 0,-144 0,-146 0,-148 0,-150 0,-152 0,-154 0,-156 0,-158 0,-160 0,-162 0,-164 0,-166 0,-168 0,-170 0,-172 0,-174 0,-176 0,-178 0,-180 0))'), geometry) AS geometry, class, name, name_en FROM waterway_z14 WHERE ST_IsValid(geometry)) AS t;

CREATE INDEX waterway_z3_3031_idx ON waterway_z3_3031 USING gist (geometry);
CREATE INDEX waterway_z4_3031_idx ON waterway_z4_3031 USING gist (geometry);
CREATE INDEX waterway_z6_3031_idx ON waterway_z6_3031 USING gist (geometry);
CREATE INDEX waterway_z9_3031_idx ON waterway_z9_3031 USING gist (geometry);
CREATE INDEX waterway_z10_3031_idx ON waterway_z10_3031 USING gist (geometry);
CREATE INDEX waterway_z11_3031_idx ON waterway_z11_3031 USING gist (geometry);
CREATE INDEX waterway_z12_3031_idx ON waterway_z12_3031 USING gist (geometry);
CREATE INDEX waterway_z13_3031_idx ON waterway_z13_3031 USING gist (geometry);
CREATE INDEX waterway_z14_3031_idx ON waterway_z14_3031 USING gist (geometry);

CREATE OR REPLACE FUNCTION layer_waterway_3031(bbox geometry, zoom_level int)
RETURNS TABLE(geometry geometry, class text, name text, name_en text) AS $$
    SELECT geometry, class,
        NULLIF(name, '') AS name,
        COALESCE(NULLIF(name_en, ''), name) AS name_en
    FROM (
        -- etldoc: waterway_z3 ->  layer_waterway:z3
        SELECT * FROM waterway_z3_3031 WHERE zoom_level = 3
        UNION ALL
        -- etldoc: waterway_z4 ->  layer_waterway:z4_5
        SELECT * FROM waterway_z4_3031 WHERE zoom_level BETWEEN 4 AND 5
        UNION ALL
        -- etldoc: waterway_z6 ->  layer_waterway:z6_8
        SELECT * FROM waterway_z6_3031 WHERE zoom_level BETWEEN 6 AND 8
        UNION ALL
        -- etldoc: waterway_z9 ->  layer_waterway:z9
        SELECT * FROM waterway_z9_3031 WHERE zoom_level = 9
        UNION ALL
        -- etldoc: waterway_z10 ->  layer_waterway:z10
        SELECT * FROM waterway_z10_3031 WHERE zoom_level = 10
        UNION ALL
        -- etldoc: waterway_z11 ->  layer_waterway:z11
        SELECT * FROM waterway_z11_3031 WHERE zoom_level = 11
        UNION ALL
        -- etldoc: waterway_z12 ->  layer_waterway:z12
        SELECT * FROM waterway_z12_3031 WHERE zoom_level = 12
        UNION ALL
        -- etldoc: waterway_z13 ->  layer_waterway:z13
        SELECT * FROM waterway_z13_3031 WHERE zoom_level = 13
        UNION ALL
        -- etldoc: waterway_z14 ->  layer_waterway:z14
        SELECT * FROM waterway_z14_3031 WHERE zoom_level >= 14
    ) AS zoom_levels
    WHERE geometry && bbox;
$$ LANGUAGE SQL IMMUTABLE;
