DELETE FROM Classes WHERE CLASS in(SELECT c.class 
FROM (SELECT name, CLASS FROM Ships UNION SELECT ship, 
ship FROM Outcomes) AS sh RIGHT JOIN Classes c ON 
c.class=sh.class GROUP BY c.class HAVING count(sh.name)<=2)
