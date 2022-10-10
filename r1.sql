SELECT DISTINCT k.model FROM 
(SELECT prod.maker, l.hd, l.screen 
FROM product prod JOIN laptop l 
ON l.model = prod.model) d, (
SELECT prod.maker, pc.speed, 
pc.price FROM product prod 
JOIN pc ON pc.model = prod.model) m, 
(SELECT color, TYPE, price FROM printer) t, 
(SELECT model, color, TYPE, price 
FROM printer) v, (SELECT model, ram, 
screen FROM laptop) o, (SELECT model, 
speed, ram, hd, price FROM pc) k 
WHERE d.maker = m.maker AND t.type <> v.type 
AND t.color = v.color AND d.screen = 
o.screen + 3 AND m.price = 4 * t.price 
AND stuff(v.model, 3, 1, '') = stuff(
o.model, 3, 1, '') AND k.speed = m.speed 
AND k.hd = d.hd AND k.ram = o.ram 
AND k.price = v.price

--WITH ч as(
--SELECT  P.maker,pc.speed, pc.price
--   FROM product P
--   JOIN pc ON pc.model =  P.model),и as (
--SELECT color, TYPE,price FROM printer),
--п as(SELECT model,color,TYPE,price FROM printer)
--с as(
--SELECT model,ram,screen FROM laptop),
--ы as(
--SELECT model,speed,ram,hd,price FROM pc)
--SELECT DISTINCT k.model
--FROM (SELECT  P.maker,l.hd,l.screen
--   FROM product  P JOIN laptop l ON l.model =  P.model) d,
--ч,и,п,с,ы