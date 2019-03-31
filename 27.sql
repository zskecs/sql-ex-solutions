SELECT maker, AVG(hd) 
FROM (SELECT  Product.maker, PC.hd
FROM PC JOIN Product ON (PC.model = Product.model)
WHERE maker IN (SELECT maker FROM Product where type = 'Printer')
 )AS result
GROUP By result.maker
