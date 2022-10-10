SELECT c.name, sum(z) 
FROM(SELECT DISTINCT t.trip_no, 
t.ID_comp, s.date, t.time_out, 
t.time_in, datediff(MINUTE, 
time_out, iif(time_out<=time_in, 
time_in, dateadd(DAY, 1, time_in))) z 
FROM trip t JOIN Pass_in_trip s 
ON t.trip_no = s.trip_no)x 
JOIN company c ON c.ID_comp = 
t1.ID_comp GROUP BY c.name, c.ID_comp