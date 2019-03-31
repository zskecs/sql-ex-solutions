SELECT DISTINCT type, p.model, L.speed
FROM Laptop L JOIN Product P ON (l.model=p.model) 
WHERE speed < (SELECT MIN(speed) from PC)
