WITH Z AS (SELECT trip_no,replace((
CASE WHEN town_from > town_to THEN town_from + town_to
ELSE town_to + town_from END),' ','')b FROM trip),X AS 
(SELECT b,count(trip_no)q,max(count(trip_no)) OVER () a
FROM Z GROUP BY Z.b)SELECT count(*)c FROM X WHERE q = a