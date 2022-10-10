SELECT i.point,i.date,
inc,OUT FROM Income_o i
FULL JOIN Outcome_o o ON i.point = o.point
AND i.date = o.date
WHERE i.date IS NOT NULL
UNION SELECT o.point,
o.date,i.inc,o.out
FROM Outcome_o o
FULL JOIN Income_o i ON o.point = i.point
AND o.date = i.date
WHERE o.date IS NOT NULL