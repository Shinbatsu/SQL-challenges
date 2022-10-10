SELECT TOP 1 WITH TIES * FROM
(SELECT COUNT (DISTINCT (p.trip_no)) c, p.date
FROM Trip t, Pass_in_trip p
WHERE t.trip_no=p.trip_no AND t.town_from = 'Rostov'
GROUP BY p.date) _ ORDER BY _.c Desc

--WITH T AS (SELECT DISTINCT t.trip_no x,date 
--from Pass_in_trip p JOIN Trip t ON 
--t.trip_no=p.trip_no where town_from='Rostov')
--SELECT  TOP 1 WITH TIES count( distinct x) c,
--date from T GROUP BY date ORDER BY c

--SELECT DISTINCT p.trip_no , 
--date from Pass_in_trip p 
--JOIN Trip t On p.trip_no=p.trip_no 
--where town_from='Rostov'
