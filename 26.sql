ELECT AVG(price) as AVG
FROM (SELECT price FROM Product p INNER JOIN PC
ON p.model = PC.model WHERE maker = 'A'
UNION ALL SELECT price FROM Product p INNER  JOIN Laptop l
ON p.model = l.model WHERE maker='A') AS AVG_price

--v1
--with u as (SELECT model,price from PC UNION SELECT model,price FROM LAptop)
--SELECT product.model, price, from product INNER JOIN u ON u.model=product.model where maker='A' and (type='PC' or type='Laptop')

--v2
--SELECT AVG(av.p) AS avg_price 
--FROM (SELECT AVG(price) p 
----FROM Product m, PC 
--WHERE m.model = PC.model AND 
--maker = 'A' 
--UNION 
--SELECT AVG(price) p 
--FROM Product m, Laptop l 
--WHERE m.model = l.model AND 
--maker = 'A' ) AS av;