WITH t AS (SELECT c.country, s.launched,
COUNT(s.launched) count FROM Classes c
LEFT JOIN Ships s ON s.class = c.class
and s.launched is not null
GROUP BY c.country, s.launched) SELECT s.country,
IIF (MIN(s.launched) is null, NULL, MIN(s.count))max,MIN(s.launched) year
FROM t s WHERE s.count = ( SELECT MAX(count) FROM t WHERE country = s.country)
GROUP BY s.country

--SELECT country, MAX(x) as Qty, MIN(launched) as Year
--FROM (SELECT country, COUNT(*) x , launched  FROM Ships b, Classes a
-- WHERE a.class = b.class  GROUP BY country, launched
-- ) s WHERE launched = ANY(SELECT MIN(launched) 
-- FROM Ships bb, Classes aa  WHERE bb.class = aa.class 
-- GROUP BY country, launched ) GROUP BY country

--WITH t as (SELECT country,count(launched) a,min(launched) b from classes join ships on ships.class=Classes.class Group by country,launched)
--SELECT t.country h,max(a),min(b) from t group by t.country
