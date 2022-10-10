SELECT DISTINCT x.v_name FROM(
SELECT *, min(v_color) over(
PARTITION BY b_q_id) a, count(*) 
over(PARTITION BY b_v_id) b 
FROM utb b JOIN utv v ON 
v.v_id = b.b_v_id) x 
WHERE a = 'B' AND b > 1 
AND x.V_COLOR = 'R'