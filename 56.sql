WITH _ AS(SELECT name,class FROM ships
UNION SELECT ship,ship FROM outcomes
),t AS(SELECT c.class,name FROM classes c
LEFT JOIN ships s ON c.class=s.class
UNION SELECT class, ship FROM 
classes INNER JOIN outcomes ON class=ship)
SELECT class, sum(CASE WHEN result='sunk' THEN 1
ELSE 0 END) res FROM t LEFT JOIN outcomes o 
ON t.name=o.ship GROUP BY class

--SELECT c.class,name from classes c LEFT JOIN ships ON ships.class= c.class

--SELECT * from outcomes o INNER Join _ on o.ship=_.name where result='sunk'

--SELECT * from _ LEFT JOIN outcomes o ON _.name=o.ship where result='sunk' or result is null

--SELECT class,SUM(CASE WHEN result='sunk' THEN 1 ELSE 0 END) res
--FROM t LEFT JOIN outcomes o ON t.name=o.ship WHERE result='sunk' GROUP BY class