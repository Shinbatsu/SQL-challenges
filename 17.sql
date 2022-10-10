SELECT DISTINCT type,l.model,speed FROM Laptop l JOIN Product ON l.model=Product.model where speed<(SELECT min(speed) FROM PC)
