SELECT maker from (SELECT maker,count(DISTINCT type) uniq FROM PRODUCT p JOIN (SELECT speed,model FROM PC
UNION SELECT speed, model FROM Laptop) t ON t.model=p.model where type in ('PC','Laptop') and speed>=750 GROUP BY maker) n where n.uniq=2
