SELECT a.ship,COUNT(distinct 
CONVERT(varbinary(100), a.ship))
FROM Outcomes a,Outcomes b
WHERE CONVERT(varbinary(100), a.ship) 
<> CONVERT(varbinary(100), b.ship) AND
a.ship = b.ship GROUP BY a.ship
