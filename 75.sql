SELECT maker,max(l.price),max(c.price),
max(t.price)FROM laptop l RIGHT JOIN product p 
ON l.model = p.model LEFT JOIN pc c ON c.model = p.model
LEFT JOIN printer t ON p.model = t.model
WHERE maker in(SELECT maker FROM product WHERE model in
(SELECT model FROM pc WHERE price IS NOT NULL
UNION SELECT model FROM printer WHERE price IS NOT NULL
UNION SELECT model FROM laptop WHERE price IS NOT NULL) )
GROUP BY maker