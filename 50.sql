WITH t AS
(SELECT DISTINCT name
FROM ships
WHERE class='Kongo'
UNION SELECT class
FROM classes
WHERE CLASS='Kongo')
SELECT DISTINCT battle
FROM outcomes
WHERE ship= any
(SELECT DISTINCT name
FROM ships
WHERE class='Kongo'
UNION SELECT class
FROM classes
WHERE class='Kongo')
--Select * from outcomes
