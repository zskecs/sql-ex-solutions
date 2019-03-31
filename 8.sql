SELECT maker
FROM product
WHERE type = 'PC' 

EXCEPT

SELECT maker
FROM product
WHERE type = 'Laptop'
