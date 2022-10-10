WITH T AS(
SELECT name,
lead(name) over(
ORDER BY date ASC) AS nextbattle , date
FROM Battles)
INSERT INTO Outcomes
SELECT ship,nextbattle AS battle,
'sunk' AS result
FROM (SELECT ship,battle,nextbattle,
count(*) over(PARTITION BY ship) n, date , result
FROM Outcomes o
JOIN T ON o.battle=T.name) _ WHERE n=1 
AND result='damaged'
AND nextbattle IS NOT NULL
