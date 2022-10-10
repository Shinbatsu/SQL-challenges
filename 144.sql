WITH t AS(SELECT maker,p.model,
price FROM product p
LEFT JOIN PC ON p.model=PC.model
WHERE TYPE='PC')
SELECT maker
FROM(SELECT maker,
min(price) a,
max(price) b FROM t
GROUP BY maker) _ WHERE a=
(SELECT min(price)FROM t)
AND b=(SELECT max(price) FROM t)