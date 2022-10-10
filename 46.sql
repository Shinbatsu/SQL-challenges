SELECT ship, displacement, numGuns
FROM outcomes LEFT JOIN (
SELECT name, displacement, numGuns
FROM ships s join classes c ON c.class=s.class 
UNION SELECT class AS name, displacement, numGuns
FROM classes) AS X ON outcomes.ship=X.name WHERE battle = 'Guadalcanal'


--with t as(
--SELECT name,class FROM outcomes FULL JOIN ships on ships.name=outcomes.ship where battle='Guadalcanal'
--)
--SELECT ships.name, displacement, numGuns 
--from outcomes (LEFT JOIN ships on ships.name = outcomes.ship
--LEFT Join (classes on classes.class=ships.class)
--union select class as name, displacement, numGuns
--	from classes) where battle='Guadalcanal'

--select name as ship,displacement,numGuns From t Join classes ON t.class=classes.class

--SELECT Outcomes.ship, Classes.displacement, Classes.numGuns 
--FROM Classes RIGHT JOIN
-- Outcomes ON Classes.class = Outcomes.ship 
--WHERE Outcomes.battle = 'Guadalcanal'

--SELECT ships.name,displacement,numGuns from outcomes LEFT JOIN ships on ships.name = outcomes.ship LEFT Join classes on classes.class=ships.class
--where battle='Guadalcanal'