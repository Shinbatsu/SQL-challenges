WITH АДСКОЕ_ПИВО AS(SELECT DISTINCT _.maker,
(SELECT count(maker)FROM product p
WHERE p.maker = _.maker AND p.type = 'pc') pc,
(SELECT count(maker) FROM product p
WHERE p.maker = _.maker AND p.type = 'laptop') laptop,
(SELECT count(maker)FROM product p WHERE p.maker = _.maker
AND p.type = 'printer') printer FROM product _)SELECT maker,CASE
WHEN pc > 0 THEN 'yes('+cast(z AS varchar(20))+')'
ELSE 'no' END pc,CASE
WHEN laptop > 0 THEN 'yes('+cast(x AS varchar(20))+')'
ELSE 'no' END laptop, CASE
WHEN printer > 0 THEN 'yes('+cast(c AS varchar(20))+')'
ELSE 'no'END printer FROM(SELECT ЧИПСЫ_И_СУХАРИКИ.maker,
ЧИПСЫ_И_СУХАРИКИ.pc,(SELECT count(DISTINCT pc.model)FROM product _
JOIN pc ON pc.model = _.model
WHERE _.maker = ЧИПСЫ_И_СУХАРИКИ.maker) z,
ЧИПСЫ_И_СУХАРИКИ.laptop,
(SELECT count(DISTINCT l.model)FROM product _
JOIN laptop l ON l.model = _.model
WHERE _.maker = ЧИПСЫ_И_СУХАРИКИ.maker) x,ЧИПСЫ_И_СУХАРИКИ.printer,
(SELECT count(DISTINCT p.model)FROM product _
JOIN printer p ON _.model = p.model
WHERE _.maker = ЧИПСЫ_И_СУХАРИКИ.maker) c
FROM АДСКОЕ_ПИВО ЧИПСЫ_И_СУХАРИКИ) asdasdd

--with pcs as (SELECT maker, CASE
--    WHEN count(type)=0 THEN 'no'
--    ELSE 'yes('+CAST(count(type) as varchar(20))+')' END Pc_s from Product where type='PC'
--GROUP BY Product.maker), lps as (SELECT maker, CASE
--    WHEN count(type)=0 THEN 'no'
--    ELSE 'yes('+CAST(count(type) as varchar(20))+')' END Lp_s from Product where type='Laptop'
--GROUP BY Product.maker), prs as (SELECT maker, CASE
--    WHEN count(type)=0 THEN 'no'
--    ELSE 'yes('+CAST(count(type) as varchar(20))+')' END Pr_s from Product where type='Printer'
--GROUP BY Product.maker)
--
--SELECT * FROM pcs,lps ,prs
--
--SELECT maker,pc,
--laptop,printer
--FROM (SELECT DISTINCT maker,type,model From Product) t PIVOT (count(model)FOR type
--IN(pc, printer, laptop) 
--) _
