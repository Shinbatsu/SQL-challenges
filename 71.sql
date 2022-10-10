SELECT maker FROM product
LEFT JOIN PC ON product.model = pc.model
WHERE TYPE = 'PC' GROUP BY maker
HAVING sum(iif(pc.model IS NULL, 1, 0)) = 0