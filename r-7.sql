WITH _ AS(SELECT model m, type t,CONVERT(INT,LEFT(model,1))a,
CONVERT(INT,RIGHT(model,1))b FROM Product p)SELECT m,t,a*b num 
FROM _ WHERE RIGHT(m,1)IN('1','3','5','7','9')AND LEFT(m,1)IN
('0','2','4','6','8')AND RIGHT(m,1)>LEFT(m,1)
