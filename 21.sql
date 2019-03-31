SELECT maker, MAX(price)
FROM Product PR JOIN PC CO ON (PR.model = CO.model)
GROUP BY maker
