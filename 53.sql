SELECT cast(avg(numGuns*1.0) AS numeric(6, 2)) AS res
FROM classes WHERE TYPE='bb'