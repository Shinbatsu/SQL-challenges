SELECT coalesce(i.point, o.point) p,
sum(coalesce(inc, 0))-sum(coalesce(OUT, 0)) res
FROM income_o i FULL JOIN outcome_o o ON i.date=o.date
AND i.point=o.point GROUP BY coalesce(i.point, o.point)

--SELECT * from Income_o
--SELECT point,sum(out) from outcome Group by point
--UNION SELECT point,sum(inc) from Income Group by point
