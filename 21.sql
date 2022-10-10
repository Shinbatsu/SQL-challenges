SELECT maker,max(price) FROM Product p JOIN PC c ON p.model=c.model where type='PC' GROUP BY maker
