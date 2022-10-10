WITH _ AS (SELECT name,
CLASS FROM ships
UNION SELECT ship,
ship FROM outcomes)
SELECT cast(avg(numguns*1.0) AS numeric(6, 2))
FROM _ JOIN classes c ON c.class=_.class
WHERE TYPE='bb'