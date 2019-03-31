SELECT DISTINCT maker, price
FROM Printer pri JOIN Product pro ON (pri.model=pro.model)
WHERE price = (SELECT MIN(price) FROM Printer WHERE color = 'y')  AND color = 'y'
