WITH T AS( SELECT point, date, SUM(out) 
OVER(PARTITION BY point ORDER BY date) 
b, MAX(date) OVER(PARTITION BY point) z FROM Outcome_o), 
R AS ( SELECT point, date, b - 10000 b, MIN(date) OVER(
PARTITION BY point) MIN FROM T WHERE b >= 10000 
OR date = z ) SELECT point, date, b FROM R WHERE min = date