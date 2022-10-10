UPDATE Laptop set screen=screen+1,price=price-100 
where model in (SELECT model from product 
where maker in ('E','B') and type='Laptop')
