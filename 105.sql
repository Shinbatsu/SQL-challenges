WITH _ AS(SELECT maker, model, row_number() 
over( ORDER BY maker, model) A, dense_rank() 
over( ORDER BY maker) B, rank() over( ORDER BY maker) 
C FROM Product) SELECT maker, model, A, B, C, max(A) 
over(PARTITION BY B) D FROM _