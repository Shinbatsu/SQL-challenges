SELECT maker,avg(l.screen) FROM Product p JOIN Laptop l ON p.model=l.model where type='Laptop' Group by maker
