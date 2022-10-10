SELECT DISTINCT LOWER(name) from ships s FULL JOIN Outcomes o ON o.ship=s.name where launched<1941 or battle in (select name from battles where cast(Year(date) as int)<1941)
--with t as (select name from battles where cast(Year(date) as int)<1941)
--SELECT name from ships where launched<1941 union select ship from outcomes where battle in (SELECT * from t)