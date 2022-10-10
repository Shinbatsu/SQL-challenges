SELECT country, class FROM Classes
WHERE country = CASE WHEN EXISTS (
SELECT class FROM Classes WHERE country = 'Russia'
) THEN 'Russia' ELSE country END
