WITH _ AS (SELECT name,CLASS FROM ships UNION SELECT ship,
ship FROM outcomes) SELECT _.class,MIN (launched) l
FROM classes _ LEFT JOIN ships s ON s.class=_.class
GROUP BY _.class ORDER BY l