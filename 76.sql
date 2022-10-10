SELECT name,sum(datediff(MINUTE, iif(time_out < time_in, time_out, 
dateadd(DAY, -1, time_out)), time_in)) x FROM Passenger p JOIN 
(SELECT DISTINCT ID_psg FROM (SELECT ID_psg,place,count(place)c
FROM pass_in_trip s GROUP BY ID_psg,place) z GROUP BY z.ID_psg 
HAVING max(c) = 1) R ON p.ID_psg = R.ID_psg JOIN Pass_in_trip s ON 
s.ID_psg = R.ID_psg JOIN Trip t ON t.trip_no = s.trip_no GROUP BY p.ID_psg,p.name


--SELECT ID_psg,datediff(MINUTE, iif(time_out < time_in, time_out, dateadd(DAY, -1, time_out)), time_in) AS ft
--FROM pass_in_trip z
--JOIN trip ON z.trip_no = trip.trip_no
--WHERE ID_psg = 10

--SELECT DISTINCT ID_psg,max(count(place)) over(PARTITION BY ID_psg) AS maxplace
--FROM pass_in_trip
--GROUP BY ID_psg,place

