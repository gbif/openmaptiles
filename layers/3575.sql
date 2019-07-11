CREATE OR REPLACE FUNCTION z_3575(numeric) RETURNS integer AS $$
BEGIN
    -- Don't bother if the scale is larger than ~zoom level 0
    if $1 > 150000000 then
         return null;
    end if;
         return round(log(2,125697053.40704/$1));
END;
$$ LANGUAGE plpgsql IMMUTABLE COST 0;
