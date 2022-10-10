SELECT _,
(len(replace(_, '1', '__')) - len(_)) * 1 + (len(replace(_, '2', '__')) - len(_)) * 2 + 
(len(replace(_, '3', '__')) - len(_)) * 3 + (len(replace(_, '4', '__')) - len(_)) * 4 + 
(len(replace(_, '5', '__')) - len(_)) * 5 + (len(replace(_, '6', '__')) - len(_)) * 6 + 
(len(replace(_, '7', '__')) - len(_)) * 7 + (len(replace(_, '8', '__')) - len(_)) * 8 + 
(len(replace(_, '9', '__')) - len(_)) * 9 Сумма
FROM (SELECT model _ FROM product) t