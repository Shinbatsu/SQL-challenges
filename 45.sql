SELECT name FROM(SELECT name
FROM ships UNION SELECT ship
FROM outcomes) t WHERE name like '% % %'