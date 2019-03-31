SELECT name
FROM Ships
WHERE name LIKE ('% % %')

UNION

SELECT ship
FROM Outcomes
WHERE ship LIKE ('% % %')
