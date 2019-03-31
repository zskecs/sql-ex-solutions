WITH table1 AS
(
SELECT s.class, s.name
FROM Ships s
UNION
SELECT o.ship as 'class', o.ship
FROM Outcomes o
WHERE NOT EXISTS( SELECT * FROM Ships s WHERE s.name = o.ship)
) 

SELECT table1.class
FROM table1 RIGHT JOIN Classes ON Classes.class = table1.class
GROUP by table1.class
HAVING count(*) = 1
