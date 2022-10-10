with t as (SELECT DISTINCT maker from product where type='Printer')
SELECt maker, avg(Pc.hd) from product p JOIN Pc ON Pc.model=p.model where maker = 
ANY(SELECT maker from product where type='PC' Intersect 
SELECT DISTINCT maker from product where type='Printer') Group by maker
