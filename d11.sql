INSERT INTO PC
SELECT min(code) + 20 AS code,
cast(model AS int) + 1000 AS model,
max(speed) speed,max(ram) * 2 ram,max(hd) * 2 hd,(
SELECT concat(MAX(CAST(REPLACE(cd, 'x', '') AS int)), 'x') FROM pc) cd,
max(price) / 1.5 price
FROM Laptop GROUP BY model