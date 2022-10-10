SELECT country,name FROM Classes CROSS JOIN Battles EXCEPT
SELECT DISTINCT country,battle FROM Classes c
INNER JOIN Outcomes o ON ship = c.class
OR EXISTS (SELECT name FROM Ships 
WHERE name = o.ship AND CLASS = c.class )
