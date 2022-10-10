SELECT o.point,FORMAT(o.date, 'yyyy-MM-dd') a,
( SELECT SUM(out) FROM Outcome
WHERE point = o.point AND date <= DATEADD(DAY, 4, o.date) AND
date >= o.date)  b FROM Outcome o WHERE
DATEPART(weekday, o.date) = 2 AND EXISTS ( SELECT * FROM Outcome WHERE
point = o.point AND date = DATEADD(DAY, 1, o.date)) AND EXISTS ( SELECT *
FROM Outcome WHERE point = o.point AND date <= DATEADD(DAY, 4, o.date) AND
date >= o.date HAVING COUNT(DISTINCT date)>4
) GROUP BY o.point ,o.date, FORMAT(o.date, 'yyyy/MM/dd')
