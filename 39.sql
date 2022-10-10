SELECT DISTINCT ship 
FROM outcomes o join battles b on b.name = o.battle
WHERE result = 'damaged' and exists (SELECt * 
FROM Outcomes a join battles v on v.name = a.battle
WHERE a.ship = o.ship AND v.date > b.date)
