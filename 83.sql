WITH T AS( SELECT name, 0 + CASE WHEN numGuns = 8 
THEN 1 ELSE 0 END + CASE WHEN bore = 15 
THEN 1 ELSE 0 END + CASE WHEN displacement = 32000
THEN 1 ELSE 0 END + CASE WHEN TYPE = 'bb' 
THEN 1 ELSE 0 END + CASE WHEN launched = 1915 
THEN 1 ELSE 0 END + CASE WHEN s.class = 'Kongo' 
THEN 1 ELSE 0 END + CASE WHEN country = 'USA' 
THEN 1 ELSE 0 END r FROM ships s 
JOIN classes c ON c.class = s.class) 
SELECT name FROM T WHERE r > 3