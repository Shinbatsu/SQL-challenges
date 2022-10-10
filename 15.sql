SELECT hd from (SELECT hd,count(hd) ct from PC Group by hd) t WHERE ct>=2
