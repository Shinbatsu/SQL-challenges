SELECT * FROM product WHERE model 
not in( SELECT TOP 3 model 
FROM product ORDER BY model) 
AND model not in (SELECT TOP 3 model 
FROM product ORDER BY model DESC )