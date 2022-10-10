WITH A AS(SELECT _.b_q_id,(
datediff(SECOND,_.b_datetime,
(SELECT TOP 1 b_datetime
FROM utB t WHERE b_q_id =_.b_q_id
AND b_datetime>_.b_datetime
ORDER BY b_datetime))) 
diffMax FROM utB _),Z AS
(SELECT b.b_q_id id,
datediff(SECOND, 
MIN(b.b_datetime), 
MAX(b.b_datetime)) d,
SUM(b.b_vol) vol
FROM utB b GROUP BY 
b.b_q_id)SELECT
(SELECT q_name FROM utQ
WHERE Q_ID = id), --d,
(SELECT max(diffMax)FROM A
WHERE b_q_id = id)FROM Z WHERE 
d>(SELECT avg(d)FROM Z)
