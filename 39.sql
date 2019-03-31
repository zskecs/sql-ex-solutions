WITH table1 AS (SELECT * FROM 
Outcomes JOIN Battles ON name = battle
WHERE result = 'damaged'
)

SELECT distinct ship  FROM table1
WHERE EXISTS (SELECT * FROM Outcomes  JOIN Battles ON name = battle

WHERE table1.ship = ship AND table1.date < date)
