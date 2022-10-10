WITH D AS(SELECT model,price FROM PC
UNION SELECT model,price FROM Laptop
UNION SELECT model,price FROM Printer)
SELECT DISTINCT P.maker,CASE WHEN MAX(
CASE WHEN D.price IS NULL THEN 1 ELSE 0 END) = 0 
THEN MAX(D.price)END FROM Product P RIGHT JOIN D 
ON P.model=D.model GROUP BY P.maker

--SELECT DISTINCT p.maker,max(_.price) as m_price FROM Product p JOIN 
--(SELECT model, price from PC 
--UNION ALL SELECT model, price from laptop UNION ALL SELECT model,price from printer) _ ON _.model=p.model GROUP BY p.maker