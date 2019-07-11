-- DROP MATERIALIZED VIEW osm_transportation_merge_linestring_gen7_3575;
-- DROP MATERIALIZED VIEW osm_transportation_merge_linestring_gen6_3575;
-- DROP MATERIALIZED VIEW osm_transportation_merge_linestring_gen5_3575;
-- DROP MATERIALIZED VIEW osm_transportation_merge_linestring_gen4_3575;
-- DROP MATERIALIZED VIEW osm_transportation_merge_linestring_gen3_3575;

-- DROP MATERIALIZED VIEW osm_highway_linestring_gen2_3575;
-- DROP MATERIALIZED VIEW osm_highway_linestring_gen1_3575;
-- DROP MATERIALIZED VIEW osm_highway_linestring_3575     ;

-- DROP MATERIALIZED VIEW osm_railway_linestring_gen3_3575;
-- DROP MATERIALIZED VIEW osm_railway_linestring_gen2_3575;
-- DROP MATERIALIZED VIEW osm_railway_linestring_gen1_3575;
-- DROP MATERIALIZED VIEW osm_railway_linestring_3575     ;

-- DROP MATERIALIZED VIEW osm_highway_polygon_3575;

CREATE MATERIALIZED VIEW osm_transportation_merge_linestring_gen7_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order FROM osm_transportation_merge_linestring_gen7) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_transportation_merge_linestring_gen6_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order FROM osm_transportation_merge_linestring_gen6) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_transportation_merge_linestring_gen5_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order FROM osm_transportation_merge_linestring_gen5) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_transportation_merge_linestring_gen4_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order FROM osm_transportation_merge_linestring_gen4) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_transportation_merge_linestring_gen3_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order FROM osm_transportation_merge_linestring_gen3) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

CREATE MATERIALIZED VIEW osm_highway_linestring_gen2_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM osm_highway_linestring_gen2) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_highway_linestring_gen1_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM osm_highway_linestring_gen1) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_highway_linestring_3575      AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM osm_highway_linestring     ) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

CREATE MATERIALIZED VIEW osm_railway_linestring_gen3_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, railway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, railway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM osm_railway_linestring_gen3) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_railway_linestring_gen2_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, railway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, railway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM osm_railway_linestring_gen2) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_railway_linestring_gen1_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, railway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, railway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM osm_railway_linestring_gen1) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);
CREATE MATERIALIZED VIEW osm_railway_linestring_3575      AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, railway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, railway, z_order, is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, is_area, service FROM osm_railway_linestring     ) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

CREATE MATERIALIZED VIEW osm_highway_polygon_3575 AS SELECT ST_Transform(t.geometry,3575) AS geometry, osm_id, highway, z_order, layer, is_area FROM (SELECT ST_Intersection(ST_GeomFromEWKT('SRID=4326;POLYGON((-180 45,-180 90,180 90,180 45,178 45,176 45,174 45,172 45,170 45,168 45,166 45,164 45,162 45,160 45,158 45,156 45,154 45,152 45,150 45,148 45,146 45,144 45,142 45,140 45,138 45,136 45,134 45,132 45,130 45,128 45,126 45,124 45,122 45,120 45,118 45,116 45,114 45,112 45,110 45,108 45,106 45,104 45,102 45,100 45,98 45,96 45,94 45,92 45,90 45,88 45,86 45,84 45,82 45,80 45,78 45,76 45,74 45,72 45,70 45,68 45,66 45,64 45,62 45,60 45,58 45,56 45,54 45,52 45,50 45,48 45,46 45,44 45,42 45,40 45,38 45,36 45,34 45,32 45,30 45,28 45,26 45,24 45,22 45,20 45,18 45,16 45,14 45,12 45,10 45,8 45,6 45,4 45,2 45,0 45,-2 45,-4 45,-6 45,-8 45,-10 45,-12 45,-14 45,-16 45,-18 45,-20 45,-22 45,-24 45,-26 45,-28 45,-30 45,-32 45,-34 45,-36 45,-38 45,-40 45,-42 45,-44 45,-46 45,-48 45,-50 45,-52 45,-54 45,-56 45,-58 45,-60 45,-62 45,-64 45,-66 45,-68 45,-70 45,-72 45,-74 45,-76 45,-78 45,-80 45,-82 45,-84 45,-86 45,-88 45,-90 45,-92 45,-94 45,-96 45,-98 45,-100 45,-102 45,-104 45,-106 45,-108 45,-110 45,-112 45,-114 45,-116 45,-118 45,-120 45,-122 45,-124 45,-126 45,-128 45,-130 45,-132 45,-134 45,-136 45,-138 45,-140 45,-142 45,-144 45,-146 45,-148 45,-150 45,-152 45,-154 45,-156 45,-158 45,-160 45,-162 45,-164 45,-166 45,-168 45,-170 45,-172 45,-174 45,-176 45,-178 45,-180 45))'), geometry) AS geometry, osm_id, highway, z_order, layer, is_area FROM osm_highway_polygon) AS t WHERE ST_IsValid(t.geometry) AND NOT ST_IsEmpty(t.geometry);

CREATE INDEX osm_transportation_merge_linestring_gen7_3575_idx ON osm_transportation_merge_linestring_gen7_3575 USING gist (geometry);
CREATE INDEX osm_transportation_merge_linestring_gen6_3575_idx ON osm_transportation_merge_linestring_gen6_3575 USING gist (geometry);
CREATE INDEX osm_transportation_merge_linestring_gen5_3575_idx ON osm_transportation_merge_linestring_gen5_3575 USING gist (geometry);
CREATE INDEX osm_transportation_merge_linestring_gen4_3575_idx ON osm_transportation_merge_linestring_gen4_3575 USING gist (geometry);
CREATE INDEX osm_transportation_merge_linestring_gen3_3575_idx ON osm_transportation_merge_linestring_gen3_3575 USING gist (geometry);

CREATE INDEX osm_transportation_merge_linestring_gen6_3575_highway_p_idx ON osm_transportation_merge_linestring_gen6_3575(highway) WHERE highway IN ('motorway','trunk');
CREATE INDEX osm_transportation_merge_linestring_gen5_3575_highway_p_idx ON osm_transportation_merge_linestring_gen5_3575(highway) WHERE highway IN ('motorway','trunk');
CREATE INDEX osm_transportation_merge_linestring_gen4_3575_highway_p_idx ON osm_transportation_merge_linestring_gen4_3575(highway) WHERE highway IN ('motorway','trunk', 'primary');
CREATE INDEX osm_transportation_merge_linestring_gen3_3575_highway_p_idx ON osm_transportation_merge_linestring_gen3_3575(highway) WHERE highway IN ('motorway','trunk', 'primary');

CREATE INDEX osm_highway_linestring_gen2_3575_idx ON osm_highway_linestring_gen2_3575 USING gist (geometry);
CREATE INDEX osm_highway_linestring_gen1_3575_idx ON osm_highway_linestring_gen1_3575 USING gist (geometry);
CREATE INDEX osm_highway_linestring_3575_idx ON osm_highway_linestring_3575 USING gist (geometry);
CREATE INDEX osm_highway_linestring_3575_highway_idx ON osm_highway_linestring_3575(highway);
CREATE INDEX osm_highway_linestring_3575_highway_partial_idx ON osm_highway_linestring_3575(highway) WHERE highway IN ('motorway','trunk', 'primary');

CREATE INDEX osm_railway_linestring_gen3_3575_idx ON osm_railway_linestring_gen3_3575 USING gist (geometry);
CREATE INDEX osm_railway_linestring_gen2_3575_idx ON osm_railway_linestring_gen2_3575 USING gist (geometry);
CREATE INDEX osm_railway_linestring_gen1_3575_idx ON osm_railway_linestring_gen1_3575 USING gist (geometry);
CREATE INDEX osm_railway_linestring_3575_idx ON osm_railway_linestring_3575 USING gist (geometry);

CREATE INDEX osm_highway_polygon_3575_idx ON osm_highway_polygon_3575 USING gist (geometry);

-- etldoc: layer_transportation[shape=record fillcolor=lightpink, style="rounded,filled",
-- etldoc:     label="<sql> layer_transportation |<z4> z4 |<z5> z5 |<z6> z6 |<z7> z7 |<z8> z8 |<z9> z9 |<z10> z10 |<z11> z11 |<z12> z12|<z13> z13|<z14_> z14+" ] ;
CREATE OR REPLACE FUNCTION layer_transportation_3575(bbox geometry, zoom_level int)
RETURNS TABLE(osm_id bigint, geometry geometry, class text, ramp int, oneway int, brunnel TEXT, service TEXT) AS $$
    SELECT
        osm_id, geometry,
        CASE
            WHEN highway IS NOT NULL THEN highway_class(highway)
            WHEN railway IS NOT NULL THEN railway_class(railway)
        END AS class,
        -- All links are considered as ramps as well
        CASE WHEN highway_is_link(highway) OR highway = 'steps'
             THEN 1 ELSE is_ramp::int END AS ramp,
        is_oneway::int AS oneway,
        brunnel(is_bridge, is_tunnel, is_ford) AS brunnel,
        NULLIF(service, '') AS service
    FROM (
        -- etldoc: osm_transportation_merge_linestring_gen7 -> layer_transportation:z4
        SELECT
            osm_id, geometry, highway, NULL AS railway, NULL AS service,
            NULL::boolean AS is_bridge, NULL::boolean AS is_tunnel,
            NULL::boolean AS is_ford,
            NULL::boolean AS is_ramp, NULL::boolean AS is_oneway,
            z_order
        FROM osm_transportation_merge_linestring_gen7_3575
        WHERE zoom_level = 4
        UNION ALL

        -- etldoc: osm_transportation_merge_linestring_gen6 -> layer_transportation:z5
        SELECT
            osm_id, geometry, highway, NULL AS railway, NULL AS service,
            NULL::boolean AS is_bridge, NULL::boolean AS is_tunnel,
            NULL::boolean AS is_ford,
            NULL::boolean AS is_ramp, NULL::boolean AS is_oneway,
            z_order
        FROM osm_transportation_merge_linestring_gen6_3575
        WHERE zoom_level = 5
        UNION ALL

        -- etldoc: osm_transportation_merge_linestring_gen5 -> layer_transportation:z6
        SELECT
            osm_id, geometry, highway, NULL AS railway, NULL AS service,
            NULL::boolean AS is_bridge, NULL::boolean AS is_tunnel,
            NULL::boolean AS is_ford,
            NULL::boolean AS is_ramp, NULL::boolean AS is_oneway,
            z_order
        FROM osm_transportation_merge_linestring_gen5_3575
        WHERE zoom_level = 6
        UNION ALL

        -- etldoc: osm_transportation_merge_linestring_gen4  ->  layer_transportation:z7
        SELECT
            osm_id, geometry, highway, NULL AS railway, NULL AS service,
            NULL::boolean AS is_bridge, NULL::boolean AS is_tunnel,
            NULL::boolean AS is_ford,
            NULL::boolean AS is_ramp, NULL::boolean AS is_oneway,
            z_order
        FROM osm_transportation_merge_linestring_gen4_3575
        WHERE zoom_level = 7
        UNION ALL

        -- etldoc: osm_transportation_merge_linestring_gen3  ->  layer_transportation:z8
        SELECT
            osm_id, geometry, highway, NULL AS railway, NULL AS service,
            NULL::boolean AS is_bridge, NULL::boolean AS is_tunnel,
            NULL::boolean AS is_ford,
            NULL::boolean AS is_ramp, NULL::boolean AS is_oneway,
            z_order
        FROM osm_transportation_merge_linestring_gen3_3575
        WHERE zoom_level = 8
        UNION ALL

        -- etldoc: osm_highway_linestring_gen2  ->  layer_transportation:z9
        -- etldoc: osm_highway_linestring_gen2  ->  layer_transportation:z10
        SELECT
            osm_id, geometry, highway, NULL AS railway, NULL AS service,
            NULL::boolean AS is_bridge, NULL::boolean AS is_tunnel,
            NULL::boolean AS is_ford,
            NULL::boolean AS is_ramp, NULL::boolean AS is_oneway,
            z_order
        FROM osm_highway_linestring_gen2_3575
        WHERE zoom_level BETWEEN 9 AND 10
          AND st_length(geometry)>zres(11)
          --AND st_length(geometry)>0.000343323
        UNION ALL

        -- etldoc: osm_highway_linestring_gen1  ->  layer_transportation:z11
        SELECT
            osm_id, geometry, highway, NULL AS railway, NULL AS service,
            NULL::boolean AS is_bridge, NULL::boolean AS is_tunnel,
            NULL::boolean AS is_ford,
            NULL::boolean AS is_ramp, NULL::boolean AS is_oneway,
            z_order
        FROM osm_highway_linestring_gen1_3575
        WHERE zoom_level = 11
          AND st_length(geometry)>zres(12)
          --AND st_length(geometry)>8.58307e-05
        UNION ALL

        -- etldoc: osm_highway_linestring       ->  layer_transportation:z12
        -- etldoc: osm_highway_linestring       ->  layer_transportation:z13
        -- etldoc: osm_highway_linestring       ->  layer_transportation:z14_
        SELECT
            osm_id, geometry, highway, NULL AS railway,
            service_value(service) AS service,
            is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, z_order
        FROM osm_highway_linestring_3575
        WHERE NOT is_area AND (
            zoom_level = 12 AND (
                highway_class(highway) NOT IN ('track', 'path', 'minor')
                OR highway IN ('unclassified', 'residential')
            )
            OR zoom_level = 13 AND highway_class(highway) NOT IN ('track', 'path')
            OR zoom_level >= 14
        )
        UNION ALL

        -- etldoc: osm_railway_linestring_gen3  ->  layer_transportation:z10
        SELECT
            osm_id, geometry, NULL AS highway, railway,
            service_value(service) AS service,
            is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, z_order
        FROM osm_railway_linestring_gen3_3575
        WHERE zoom_level = 10 AND (railway='rail' AND service = '')
        UNION ALL

        -- etldoc: osm_railway_linestring_gen2  ->  layer_transportation:z11
        SELECT
            osm_id, geometry, NULL AS highway, railway,
            service_value(service) AS service,
            is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, z_order
        FROM osm_railway_linestring_gen2_3575
        WHERE zoom_level = 11 AND (railway='rail' AND service = '')
        UNION ALL

        -- etldoc: osm_railway_linestring_gen1  ->  layer_transportation:z12
        SELECT
            osm_id, geometry, NULL AS highway, railway,
            service_value(service) AS service,
            is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, z_order
        FROM osm_railway_linestring_gen1_3575
        WHERE zoom_level = 12 AND (railway='rail' AND service = '')
        UNION ALL

        -- etldoc: osm_railway_linestring       ->  layer_transportation:z13
        -- etldoc: osm_railway_linestring       ->  layer_transportation:z14_
        SELECT
            osm_id, geometry, NULL AS highway, railway,
            service_value(service) AS service,
            is_bridge, is_tunnel, is_ford, is_ramp, is_oneway, z_order
        FROM osm_railway_linestring_3575
        WHERE zoom_level = 13 AND (railway='rail' AND service = '')
           OR zoom_Level >= 14
        UNION ALL

        -- NOTE: We limit the selection of polys because we need to be
        -- careful to net get false positives here because
        -- it is possible that closed linestrings appear both as
        -- highway linestrings and as polygon
        -- etldoc: osm_highway_polygon          ->  layer_transportation:z13
        -- etldoc: osm_highway_polygon          ->  layer_transportation:z14_
        SELECT
            osm_id, geometry,
            highway, NULL AS railway, NULL AS service,
            FALSE AS is_bridge, FALSE AS is_tunnel, FALSE AS is_ford,
            FALSE AS is_ramp, FALSE AS is_oneway, z_order
        FROM osm_highway_polygon_3575
        -- We do not want underground pedestrian areas for now
        WHERE zoom_level >= 13 AND is_area AND COALESCE(layer, 0) >= 0
    ) AS zoom_levels
    WHERE geometry && bbox;
--    ORDER BY z_order ASC;
$$ LANGUAGE SQL IMMUTABLE;
