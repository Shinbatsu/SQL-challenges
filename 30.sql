SELECT DISTINCT X.point, X.date, Z.out AS out, Y.INC AS inc
FROM ( SELECT I.code, I.point, I.date FROM INCOME I
UNION  SELECT O.code, O.point, O.date FROM OUTCOME O) X
LEFT OUTER JOIN (SELECT point, date, INC = SUM(INC) FROM INCOME INC 
GROUP BY point, DATE) Y ON X.point = Y.point AND X.DATE = Y.DATE
LEFT OUTER JOIN (SELECT point, date, OUT = SUM(OUT) FROM OUTCOME OUT 
GROUP BY POINT, DATE) Z ON X.point= Z.point AND X.DATE = Z.DATE
