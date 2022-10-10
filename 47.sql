WITH S AS (SELECT c.country,s.name FROM classes c JOIN ships s ON c.class=s.class
UNION SELECT c.country,o.ship FROM outcomes o JOIN classes c ON c.class=o.ship),
a AS (SELECT country,name, CASE WHEN RESULT='sunk' THEN 1 ELSE 0 END AS sunk
FROM S LEFT JOIN outcomes o ON o.ship=name)
SELECT country FROM a GROUP BY country HAVING count(DISTINCT name)-sum(sunk)=0
