SELECT country,cast(avg(power(_.bore,3)/2) as numeric(23,2)) weight
FROM(SELECT DISTINCT c.country, c.class, z.ship, c.bore
FROM classes c JOIN outcomes z on z.ship = c.class
UNION SELECT country, c.class, name,bore FROM 
classes c JOIN ships s ON s.class = c.class) _
GROUP BY country

--SELECT country,avg(POWER(bore,3)/2) weight from Classes group by country

--SELECT DISTINCT country,bore,ships.class from ships Join classes on ships.class=classes.class

--SELECT DISTINCT country, cast(avg(power(bore,3)/2) as numeric(6,2)) weight from classes FULL JOIN (SELECT ship from ships union select ship from outcomes) t ON ships.class=classes.class group by country
