SELECT c.country, b.name
FROM  Classes c Cross JOIN battles b LEFT JOIN Ships s on s.class = c.class LEFT JOIN Outcomes o ON (o.ship = s.name OR c.class = o.ship) AND b.name = o.battle
GROUP BY c.country, b.name
HAVING COUNT(o.ship) = 0
