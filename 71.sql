SELECT maker
FROM
(
	SELECT maker, CASE WHEN model IN (SELECT model FROM PC) THEN 0	ELSE 1 END p
	FROM
	(
		SELECT maker, model
		FROM Product
		WHERE type = 'PC'
		GROUP BY maker, model
	) P
) C
GROUP BY maker
HAVING SUM(p) =0
