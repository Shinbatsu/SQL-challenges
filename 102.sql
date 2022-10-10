SELECT psg.name FROM Passenger p 
WHERE(SELECT count(*) 
FROM (SELECT DISTINCT town_from 
FROM Pass_in_trip s JOIN  Trip t 
ON Tritp.trip_no = s.trip_no 
WHERE ID_psg = p.ID_psg UNION 
SELECT DISTINCT town_to 
FROM Pass_in_trip s 
JOIN Trip t ON t.trip_no = s.trip_no 
WHERE ID_psg = p.ID_psg) _) = 2