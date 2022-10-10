SELECT b.name FROM battles b,ships s GROUP BY b.name
HAVING sum(iif(YEAR(date)=launched, 1, 0)) = 0

--select b.name,sum(CAST(YEAR(date) as int)-CAST(launched AS INT))=0
--from battles b, ships s group by b.name
--with t as (SELECT name,CAST(Year(date) as int) y from battles) SELECT name from t where y<>all(SELECT launched ----from ships)
