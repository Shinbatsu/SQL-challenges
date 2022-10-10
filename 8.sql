SELECT maker
FROM Product
WHERE TYPE in ('PC')
AND maker NOT IN (
SELECT DISTINCT maker
FROM Product WHERE TYPE = 'Laptop'
) Group by maker
