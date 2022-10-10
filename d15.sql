DELETE FROM PC WHERE code not in(SELECT max(code) code FROM PC GROUP BY model)
