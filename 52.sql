WITH _ as (SELECT name n, class c FROM ships
UNION SELECT ship, ship FROM outcomes)SELECT n from _
JOIN classes c ON _.c=c.class where country='Japan' and type='bb' AND 
(numguns>=9 or numGuns is NULL) and (bore<19 or bore is NULL) AND 
(displacement<=65000 OR displacement is NULL )
