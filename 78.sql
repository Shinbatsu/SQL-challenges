WITH T as (SELECT name,FORMAT(date, 'yyyy/MM/dd') f from battles b)
SELECT name,FORMAT(DATEADD(month, DATEDIFF(month, 0, f
), 0),'yyyy/MM/dd'), EOMONTH(f) from T
