-- :TODO Too Hard! :(

--WITH T AS( SELECT date, 
--COUNT(DISTINCT trip_no) 
--x, MAX(COUNT(DISTINCT trip_no)) 
--over() MAX FROM Pass_in_trip 
--WHERE trip_no in ( SELECT trip_no 
--FROM Trip WHERE town_from like 'Rostov%') 
--GROUP BY date )

--WITH da AS ( SELECT DATEADD(DAY, t.c, date) date FROM ( SELECT 0 c 
--UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 
--UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 ) 
--t, ( --SELECT top 1 date FROM T WHERE x = MAX ) p ) 

--SELECT date, ISNULL( ( SELECT x FROM T WHERE date = da.date ), 0 ) FROM da