SELECT class,SUM(CASE WHEN RESULT='sunk' THEN 1
ELSE 0 END) AS sunks FROM (SELECT c.class,
name FROM classes c JOIN ships s ON c.class=s.class
UNION SELECT class, ship FROM classes JOIN 
outcomes ON class=ship) AS _ LEFT JOIN outcomes o ON _.name=o.ship
GROUP BY class HAVING SUM(CASE WHEN RESULT='sunk' THEN 1
ELSE 0 END) > 0 AND(SELECT count(g.name)FROM
(SELECT s.name,s.class FROM ships s UNION SELECT o.ship,o.ship
FROM outcomes o)g WHERE g.class = _ .class GROUP BY g.class)>=3