WITH table1 as (SELECT country, battle
FROM Outcomes o JOIN battles b ON o.battle = b.name LEFT JOIN Ships s ON s.name = o.ship JOIN Classes c ON s.class = c.class OR o.ship = c.class
GROUP BY battle, country 
HAVING COUNT(country)>=3)

SELECT distinct battle
FROM table1
