SELECT c.name a ,p.trip_no b,p.date c
FROM Pass_in_trip p
JOIN Trip t ON t.trip_no = p.trip_no
JOIN Company c ON c.ID_comp = t.ID_comp
WHERE town_from = 'Rostov'
AND YEAR(date) = 2003
AND month(date) = 4
ORDER BY date, time_out
OFFSET 4 row FETCH NEXT 1 row ONLY
