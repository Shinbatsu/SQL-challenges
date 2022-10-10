SELECT * FROM (SELECT DISTINCT maker,count(model) as Count_Model from Product where type='PC' Group by maker) t where Count_Model >2
