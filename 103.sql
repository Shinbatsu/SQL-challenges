WITH _ AS(SELECT rank() over( ORDER BY trip_no) R, 
trip_no t FROM trip) SELECT (SELECT t FROM _ WHERE 
R = 1) [1], (SELECT t FROM _ WHERE R = 2) [2], (
SELECT t FROM _ WHERE R = 3) [3], (SELECT t 
FROM _ WHERE R = (SELECT max(R) FROM _) - 2) [4], 
(SELECT t FROM _ WHERE R=(SELECT max(R) FROM _)-1) 
[5], (SELECT t FROM _ WHERE R = (SELECT max(R) 
FROM _)) [6]