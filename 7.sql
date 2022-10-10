SELECT p.model,t.price FROM Product p JOIN (SELECT model,price FROM PC
UNION SELECT model,price FROM Laptop
UNION SELECT model,price FROM Printer) t ON t.model=p.model
WHERE maker='B'
