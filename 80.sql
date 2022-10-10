SELECT DISTINCT maker FROM product
WHERE maker not in(SELECT DISTINCT maker
FROM Product LEFT JOIN PC ON PC.model = Product.model
WHERE type = 'PC'AND pc.model IS NULL GROUP BY maker)