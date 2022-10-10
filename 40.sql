SELECT DISTINCT _.maker, p.type FROM(
Select maker, count(DISTINCT type) c, count(
model) m from product p group by maker) _  JOIN product  x
ON _.maker = p.maker where c = 1 and m > 1
