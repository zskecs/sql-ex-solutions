SELECT maker, COUNT(model)
FROM Product
GROUP BY maker, type
HAVING COUNT(model) >=3 AND type = 'PC'SELECT maker, COUNT(model)
FROM Product
GROUP BY maker, type
HAVING COUNT(model) >=3 AND type = 'PC'
