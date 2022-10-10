WITH _ AS (SELECT name n, class c FROM ships UNION SELECT ship, ship FROM outcomes)
SELECT n as Хи_хи_Ха_ха FROM _ INNER JOIN classes c ON _.c=c.class
WHERE numGuns >= all(SELECT t.numguns FROM classes t 
WHERE t.class IN (select _.c from _) AND t.displacement=c.displacement)
