with пупа as (SELECT DISTINCT 
maker, type, CASE
WHEN type='PC' THEN 1
WHEN type='Laptop' THEN 2
ELSE 3 END ord FROM product),
чикибряк AS (
SELECT row_number() over(PARTITION BY maker
ORDER BY maker, ord) лупа,maker , TYPE
FROM пупа)
SELECT row_number() over(ORDER BY maker) num ,
CASE WHEN лупа=1 THEN maker
ELSE ''END AS maker , TYPE
FROM чикибряк
