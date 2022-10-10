SELECT SUM(COALESCE(_, 0)-COALESCE(X, 0)) a
FROM (SELECT point, SUM(inc) _ FROM Income_o GROUP BY point) z 
LEFT JOIN (SELECT point, SUM(out) X FROM Outcome_o 
GROUP BY point) L ON L.point = z.point
