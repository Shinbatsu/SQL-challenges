WITH _ AS(SELECT s.name,
(SELECT count(DISTINCT ID_comp)
FROM Pass_in_trip p JOIN Trip t 
ON p.trip_no = t.trip_no
WHERE p.ID_psg = s.ID_psg) x,
(SELECT count(date)FROM Pass_in_trip p
WHERE p.ID_psg = s.ID_psg) m
FROM Passenger s)
SELECT TOP 1 WITH ties name,m
FROM _ WHERE x = 1 ORDER BY m DESC
