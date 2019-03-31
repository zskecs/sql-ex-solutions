SELECT Product.model, price 
FROM Product JOIN Printer ON (Product.model = Printer.model) 
WHERE Product.model IN ( SELECT Printer.model FROM Printer WHERE price >=ALL (SELECT price from Printer where price >0))
