SELECT dateadd(day,c.i*100.0+b.i*10.0+a.i,'2003/01/01'),(SELECT count(ID_psg) FROM pass_in_trip _
WHERE date=dateadd(day,c.i*100+b.i*10+a.i,'2003/01/01'))
FROM(values(0),(1),(2),(3),(4),(5),(6),(7),(8),(9))a(i), 
(values(0),(1),(2),(3),(4),(5),(6),(7),(8),(9))b(i),(values(0),(1))c(i)
WHERE dateadd(DAY,c.i*100.0+b.i*10.0+a.i,'2003/01/01')>=
(SELECT min(date) FROM pass_in_trip _ WHERE date BETWEEN '2003/01/01' AND '2003/06/30' )
AND dateadd(day,c.i*100.0+b.i*10.0+ a.i,'2003/01/01') <=
(SELECT max(date)FROM Pass_in_trip p WHERE date BETWEEN '2003/01/01' AND '2003/06/30')
