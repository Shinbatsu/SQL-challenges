DELETE FROM Product WHERE model not 
in(SELECT model FROM PC UNION SELECT 
model FROM Laptop UNION SELECT model FROM Printer)
