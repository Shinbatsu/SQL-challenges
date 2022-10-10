WITH t AS (SELECT DISTINCT p.ID_psg FROM Pass_in_trip p 
JOIN Trip t ON t.trip_no = p.trip_no 
WHERE (1+ (datepart(dw, date)+@@datefirst + 5) % 7) = 6 AND time_in < time_out)
SELECT name FROM t JOIN Passenger p ON p.ID_psg = t.ID_psg
