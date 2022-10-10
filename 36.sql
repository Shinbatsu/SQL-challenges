SELECT DISTINCT c.class from classes c left join Ships s on s.class = c.class left join Outcomes o on c.class = o.ship where c.class=s.name or c.class=o.ship
