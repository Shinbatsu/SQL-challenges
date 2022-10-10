WITH a AS (SELECT maker,
count(model) t FROM product
GROUP BY maker) SELECT maker,t
FROM a WHERE t in((SELECT min(t)
FROM a),(SELECT max(t)FROM a))