WITH T AS(SELECT DISTINCT maker m FROM
(SELECT maker FROM product
WHERE type='PC'GROUP BY maker
HAVING count(type)>2) е
EXCEPT SELECT DISTINCT maker FROM product
WHERE type!='PC'),h AS
(SELECT DISTINCT maker m
FROM product WHERE type='Printer'
EXCEPT SELECT maker FROM product
WHERE type!='Printer')
SELECT * FROM h UNION SELECT * FROM T