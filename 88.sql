WITH _ AS(SELECT id_psg, count(DISTINCT t.ID_comp)m, 
max(t.ID_compc), count(DISTINCT convert(varchar(50), 
date, 121) + '_' + convert(varchar(50), time_out, 121))r 
FROM pass_in_trip s JOIN trip t ON t.trip_no = s.trip_no 
GROUP BY id_psg) SELECT top 1 WITH TIES p.name, ct, j.name 
FROM _ JOIN passenger p ON p.id_psg = _.id_psg 
JOIN company j ON j.ID_comp = _.c WHERE m = 1