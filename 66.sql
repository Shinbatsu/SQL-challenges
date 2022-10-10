WITH _ AS(SELECT cast(datefromparts(2003, 04, 01) AS t) AS x
UNION ALL SELECT dateadd(DAY, 1, x)
FROM _ WHERE datepart(DAY, x) < 7),r AS
(SELECT date, count(trip_no) c FROM
(SELECT DISTINCT t.trip_no,date
FROM Pass_in_trip p RIGHT JOIN TRIP t 
ON p.trip_no=t.trip_no WHERE town_from='Rostov'
AND date IS NOT NULL AND date BETWEEN '2003/04/01' AND '2003/04/07') t
GROUP BY date) SELECT x,coalesce(c, 0) z
FROM _ LEFT JOIN r ON _.tdate = r.date