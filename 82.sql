WITH T AS( SELECT row_number() over( ORDER BY code)x, 
code, avg(price) OVER ( ORDER BY code ROWS BETWEEN 
CURRENT ROW AND 5 FOLLOWING) _ FROM PC )SELECT 
code,_ FROM T WHERE T.x <= (SELECT count(*)FROM T)-5