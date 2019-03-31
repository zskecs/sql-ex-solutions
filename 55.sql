WITH cte1 AS (SELECT Classes.class, MIN(launched) as year

FROM Classes LEFT JOIN Ships ON Classes.class = Ships.class
GROUP by Classes.class
 )

SELECT distinct cte1.class, year
FROM cte1
