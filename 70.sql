SELECT DISTINCT battle FROM Outcomes o 
LEFT JOIN ships s ON o.ship = s.name
LEFT JOIN classes c ON s.class = c.class 
OR o.ship = c.class WHERE country IS NOT NULL 
GROUP BY battle, country HAVING count(ship) >= 3
