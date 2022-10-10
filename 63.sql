SELECT name
FROM passenger
WHERE id_psg in
(SELECT id_psg
FROM pass_in_trip
GROUP BY id_psg,
place HAVING count(*) > 1)