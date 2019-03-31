SELECT DISTINCT maker
FROM product 
WHERE model IN ( SELECT model FROM PC WHERE speed >= 450)
