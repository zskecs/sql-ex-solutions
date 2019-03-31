SELECT  maker
FROM Product pr JOIN PC p ON (pr.model = p.model)
WHERE speed >= 750

INTERSECT

SELECT  maker
FROM Product pr JOIN Laptop l ON (pr.model = l.model)
WHERE speed >= 750
