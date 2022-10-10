WITH
dsD AS
(SELECT 
   DATEDIFF(second,(select min(B_DATETIME) from utB),B_DATETIME)*1.0  sec,  
    sum(B_VOL) vol
 FROM
    utB 
group by B_DATETIME
),
dsP AS
(SELECT
   SUM(sec * sec*1.0) stt,
   SUM(vol * sec*1.0)  syt,
   SUM(sec*1.0) st,
   SUM(vol*1.0)  sy,
   COUNT(*)*1.0  N
 FROM
    dsD 
),
d as
(
SELECT (syt * N -sy*st) a ,(N*stt -st*st)/10000 b,
 (stt*sy - syt*st) c
FROM
    dsP
)
select 
cast(cast( a  / b / 1.0 as decimal(26,4))/10000 as decimal(26,8)),
cast( c  / b/10000 as decimal(26,2))  from d