SELECT DISTINCT a.model ,b.model,a.speed,a.ram FROM PC a JOIN PC b ON a.model>b.model and (a.speed=b.speed and a.ram=b.ram)
