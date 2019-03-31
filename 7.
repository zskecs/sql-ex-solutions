SELECT PC.model, price
FROM Product JOIN PC ON (product.model = PC.model)
WHERE Product.maker = 'B'

UNION 

SELECT Laptop.model, price
FROM Product JOIN Laptop ON (product.model = Laptop.model)
WHERE Product.maker = 'B'

UNION 

SELECT Printer.model, price
FROM Product JOIN Printer ON (product.model = Printer.model)
WHERE Product.maker = 'B'
