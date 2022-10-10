INSERT INTO Outcomes SELECT 'Rodney' AS ship ,
(SELECT DISTINCT name FROM Battles
WHERE date='1944/10/25' ) AS battle ,'sunk' result
UNION SELECT 'Nelson' ,(SELECT DISTINCT name
FROM Battles WHERE date='1945/01/28' ) , 'damaged'
