SELECT maker, max (type)
FROM product
GROUP BY maker

HAVING COUNT(distinct type) = 1 AND COUNT(model)>1
