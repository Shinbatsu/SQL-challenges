﻿WITH _ AS(SELECT (SELECT top 1 price FROM Laptop JOIN Product ON Product.model = Laptop.model WHERE maker in (SELECT maker FROM pc JOIN Product ON Product.model = PC.model WHERE cd = (SELECT min(cd) FROM pc)) ORDER BY price) [1], (SELECT top 1 price FROM PC JOIN Product ON Product.model = PC.model WHERE maker in (SELECT maker FROM Printer JOIN Product ON Product.model = Printer.model WHERE price = (SELECT min(price) FROM Printer)) ORDER BY price DESC) [2], (SELECT top 1 price FROM Printer JOIN Product ON Product.model = Printer.model WHERE maker in (SELECT maker FROM Laptop JOIN Product ON Product.model = Laptop.model WHERE ram = (SELECT max(ram) FROM Laptop)) ORDER BY price DESC) [3]) SELECT cast(val / iif(ca.div = 0, 1, ca.div) AS decimal(14, 2)) FROM _ CROSS apply (SELECT (coalesce(_.[1], 0) * 1.0 + coalesce(_.[2], 0) * 1.0 + coalesce(_.[3], 0) * 1.0) AS val, iif(_.[1] IS NULL, 0, 1) + iif(_.[2] IS NULL, 0, 1) + iif(_.[3] IS NULL, 0, 1) AS div FROM _) ca;