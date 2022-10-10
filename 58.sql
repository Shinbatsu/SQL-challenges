WITH T AS(SELECT _.maker m,_.type x,
p.model FROM (SELECT DISTINCT 
a.maker, b.type FROM product a,
product b) _ LEFT JOIN product 
p ON _.maker=p.maker AND _.type=p.type)
SELECT DISTINCT m,x,cast(ROUND((count(model) 
OVER(PARTITION BY m, x)) *100.0000/count(model)
OVER(PARTITION BY m),2) AS numeric(10, 2)) y FROM T