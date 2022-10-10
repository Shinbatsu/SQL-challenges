WITH T AS( SELECT top 1 WITH ties datepart(YEAR, date) a,
datepart(MONTH, date) b FROM Outcome x GROUP BY 
datepart(YEAR, date), datepart(MONTH, date) ORDER BY 
sum(out) DESC) SELECT code, point, date, out FROM T 
JOIN Outcome AS o ON T.a = datepart(YEAR, o.date) 
AND T.b = datepart(MONTH, o.date)