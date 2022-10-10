WITH
S AS
  (SELECT STRING_AGG(trip_no, '') s FROM Trip),
A(int) as (SELECT 0 UNION ALL SELECT int+1 FROM A WHERE int < 10000), 
RES AS (SELECT CAST(SUBSTRING(S.s, A.int * 3 + 1, 3) AS INT) n
   FROM A,S WHERE A.int * 3 + 3 <= LEN(S.s)) 
SELECT min(n) min ,max(n) max, sum(n) sum FROM RES OPTION (MAXRECURSION 10000)

--WITH Str as (
--  SELECT STRING_AGG(trip_no, '') _ FROM Trip),
--Series(int) as (
--SELECT 1 UNION ALL SELECT int+1 FROM Series WHERE int < 100),
--Num AS
--  (SELECT CAST(SUBSTRING(Str._, Series.int * 3 + 1, 3) AS INT) n
--   FROM Series,Str WHERE Series.int * 3 + 3 <= LEN(Str._))
--SELECT min(n),max(n),sum(n)+110 from num


--SELECT
--     a.i + b.i * 10  + c.i * 100 int
--   FROM
--     (VALUES (0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) a(i),
--     (VALUES (0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) b(i),
--     (VALUES (0),(1))c(i) ORDER by int

--WITH Series(a) AS
--(
-- SELECT 1
-- UNION ALL
-- SELECT a+1 FROM Series WHERE a <= 10000
--),
--t AS
--(
-- SELECT iter = 1
-- UNION ALL
-- SELECT iter + 1
-- FROM t WHERE iter < 10000
--)
--SELECT * FROM t

--With a as (SELECT cast(trip_no as varchar(4)) _ from Trip order by trip_no offset 0 rows),
--rownum_generator AS (SELECT 1 AS rownum UNION ALL SELECT rownum + 1
--FROM rownum_generator
--WHERE rownum < LEN((SELECT cast(trip_no as varchar(4)) _ from Trip order by trip_no offset 0 rows))),
--SELECT
--SUBSTRING((SELECT SUBSTRING(STRING_AGG(_, ''),0,3) AS f FROM a) as v, rownum*3, 1) AS BB FROM rownum_generator
