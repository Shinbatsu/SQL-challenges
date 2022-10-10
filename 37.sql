SELECT class
FROM
(SELECT c.class,
s.name
FROM classes c
JOIN ships s ON s.class = c.class
UNION SELECT c.class,
o.ship
FROM Outcomes o
JOIN classes c ON c.class = o.ship) _
GROUP BY class
HAVING count(name) = 1