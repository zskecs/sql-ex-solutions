SELECT maker, AVG(screen)
FROM Laptop L JOIN Product P ON (L.model = P.model)
GROUP BY maker
