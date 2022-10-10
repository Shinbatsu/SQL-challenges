SELECT country
FROM classes
WHERE TYPE='bc' INTERSECT
(SELECT country
FROM classes
WHERE TYPE = 'bb')