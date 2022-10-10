SELECT s.name FROM ships s
JOIN classes c ON s.class = c.class
WHERE bore = 16 UNION SELECT CLASS AS name
FROM outcomes JOIN classes ON outcomes.ship = classes.class WHERE bore = 16 AND outcomes.ship not in
(SELECT name FROM ships)

--with t as (
--select class from classes where bore=16
--)
select * from ships
--SELECT name from ships where name = any(select class from classes where bore=16) or class=any(select class from ---classes where bore=16)