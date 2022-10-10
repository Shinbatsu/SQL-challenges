WITH T AS(SELECT p.ID_psg, Trip.town_from, 
time_out FROM Pass_in_trip p JOIN trip t 
ON t.trip_no = p.trip_no WHERE date = 
(SELECT min(date) FROM Pass_in_trip x 
WHERE x.ID_psg = x.ID_psg) ), M AS 
(SELECT T.ID_psg, T.town_from FROM T 
WHERE T.time_out = (SELECT min(_.time_out) 
FROM T _ WHERE _.ID_psg = T.ID_psg ) ) 
SELECT n.name, count(s.trip_no) qty 
FROM Pass_in_trip s JOIN trip a 
ON a.trip_no = s.trip_no JOIN 
Passenger n ON n.ID_psg = s.ID_psg 
JOIN M ON M.ID_psg = n.ID_psg 
WHERE town_to = 'Moscow' 
AND M.town_from <> 'Moscow' 
GROUP BY n.ID_psg, n.name 
HAVING count(s.trip_no) > 1