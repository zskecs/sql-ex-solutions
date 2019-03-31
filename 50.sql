SELECT distinct battle
FROM Outcomes, Ships
WHERE ships.name = outcomes.ship
AND class = 'Kongo'
