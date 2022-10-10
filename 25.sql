SELECT model,ram,speed from PC where model in(Select model from Product where maker in(Select Distinct maker from product where type='Printer')) and ram=(SELECT min(ram) from pc) and speed =(SELECT min(speed ) from pc) 

--with a as(SELECT model,ram,speed from PC where model in(Select model from Product where maker in(Select Distinct maker from product where type='Printer'))and ram=(SELECt --min(ram) from Pc))
--SELECT DISTINCT maker FROM a JOIN Product ON a.model=product.model where speed=(SELECT max(speed) from a)
