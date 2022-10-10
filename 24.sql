WIth _ as (SELECT model, price FROM Laptop UNION SELECT model, price FROM printer UNION SELECT model, price FROM PC)
SELECT model FROM _ WHERE price = (SELECT MAX(price) FROM _)
