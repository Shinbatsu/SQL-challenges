SELECT DISTINCT maker,price from Printer JOIN Product p ON p.model=Printer.model WHERE price=(SELECT min(price) FROM Printer WHERE color='y') and color='y'
