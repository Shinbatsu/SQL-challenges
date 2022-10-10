WITH t AS(SELECT ship n,class AS c FROM outcomes
LEFT JOIN ships ON ships.name=outcomes.ship
WHERE RESULT='sunk') SELECT n class
FROM t WHERE t.n = any(SELECT class FROM classes)
UNION SELECT c FROM t WHERE c IS NOT NULL

--with t as (Select ship,class from outcomes o LEFT JOIN ships on o.ship=ships.name where result='sunk')
--select c.class from t JOIN classes c ON c.class=t.class or c.class=t.ship
