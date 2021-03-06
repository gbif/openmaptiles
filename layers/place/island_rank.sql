CREATE OR REPLACE FUNCTION island_rank(area REAL) RETURNS INT AS $$
    SELECT CASE
        WHEN area < 8.1e-4 THEN 6
        WHEN area BETWEEN 8.5e-5 AND 1.2e-3 THEN 5
        WHEN area BETWEEN 1.2e-3 AND 3.2e-3 THEN 4
        WHEN area > 3.2e-3 THEN 3
        ELSE 7
    END;
$$ LANGUAGE SQL IMMUTABLE STRICT;
-- CREATE OR REPLACE FUNCTION island_rank(area REAL) RETURNS INT AS $$
--     SELECT CASE
--         WHEN area < 10000000 THEN 6
--         WHEN area BETWEEN  1000000 AND 15000000 THEN 5
--         WHEN area BETWEEN 15000000 AND 40000000 THEN 4
--         WHEN area > 40000000 THEN 3
--         ELSE 7
--     END;
-- $$ LANGUAGE SQL IMMUTABLE STRICT;
