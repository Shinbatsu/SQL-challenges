WITH T AS( SELECT *, 
CASE color WHEN 'n' 
THEN 0 ELSE row_number() 
over( ORDER BY code) END + 
CASE color WHEN 'n' THEN 1 
ELSE -1 END * row_number() 
over( PARTITION BY color 
ORDER BY code ) g FROM 
Printer ), B AS ( SELECT *, 
dense_rank() over( 
PARTITION BY g ORDER BY 
type ) x FROM T ) SELECT 
B.code, B.model, B.color, 
B.type, B.price, max(model) 
over(PARTITION BY B.g) 
max_model, max(x) over(
PARTITION BY g) d,avg(price) 
over(PARTITION BY B.g)a FROM B