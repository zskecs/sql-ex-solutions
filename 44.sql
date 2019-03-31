SELECT name 
FROM Ships
WHERE name LIKE('R%')

UNION 

SELECT ship 
FROM Outcomes
WHERE ship LIKE('R%')
