SELECT count(*) AS Qty
FROM
  (SELECT maker,
          count(model) AS ct
   FROM product
   GROUP BY maker
   HAVING count(*)=1) b