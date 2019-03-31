SELECT AVG(speed)
FROM Product JOIN PC ON (Product.model = PC.model)
WHERE maker = 'A'
GROUP BY makerSELECT AVG(speed)
FROM Product JOIN PC ON (Product.model = PC.model)
WHERE maker = 'A'
GROUP BY maker
