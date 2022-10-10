WITH _ AS
(SELECT COUNT(model) grp FROM product WHERE type='printer'),
_2 AS
(SELECT xuy-(_.grp*((xuy-1)/_.grp)) num, model,type,2 pizda
FROM (SELECT model, row_number() over(ORDER BY model) xuy, type FROM product WHERE type = 'pc')a,_
UNION ALL
SELECT ROW_NUMBER() over(ORDER BY model), model,type, 1 FROM product WHERE type='printer')

SELECT row_number() over(ORDER BY num, pizda, model), model, type
FROM _2 ORDER BY num, pizda, model