SELECT count(*) r FROM(SELECT TOP 1 WITH TIES 
count(*) t,town_from,town_to FROM Trip
GROUP BY town_from, town_to ORDER BY t DESC) x