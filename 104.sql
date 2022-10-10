WITH T AS(SELECT class, cast(numGuns AS int) x, 
'bc-' + cast(numGuns AS varchar(4)) num 
FROM classes WHERE TYPE = 'bc' AND numGuns > 0 
UNION ALL SELECT class, x - 1, 'bc-' + 
cast(x - 1 AS varchar(4)) FROM T WHERE x > 1) 
SELECT class, num FROM T ORDER BY class,num