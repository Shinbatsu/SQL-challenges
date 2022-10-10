WITH T AS(SELECT p.name,sum(datediff(MINUTE, 
time_out, iif(time_in >= time_out, time_in, dateadd(DAY, 1, time_in))))r
FROM pass_in_trip  z JOIN trip t ON t.trip_no = z.trip_no
JOIN Passenger p ON p.ID_psg = z.ID_psg GROUP BY p.ID_psg,
p.name)SELECT TOP 1 WITH TIES name, r FROM T ORDER BY r DESC
