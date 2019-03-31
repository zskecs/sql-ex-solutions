WITH overall AS (SELECT price, maker FROM PC p JOIN Product pr ON (p.model = pr.model)
WHERE maker = 'A'

UNION ALL

SELECT price, maker FROM Laptop l JOIN Product pr ON (l.model = pr.model)
WHERE maker = 'A')

SELECT AVG(price) FROM overallWITH overall AS (SELECT price, maker FROM PC p JOIN Product pr ON (p.model = pr.model)
WHERE maker = 'A'

UNION ALL

SELECT price, maker FROM Laptop l JOIN Product pr ON (l.model = pr.model)
WHERE maker = 'A')

SELECT AVG(price) FROM overall

