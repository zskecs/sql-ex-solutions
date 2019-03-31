WITH t AS(SELECT ROW_NUMBER() over(ORDER BY maker asc, CASE WHEN type = 'PC' THEN 0 ELSE 1 END, CASE WHEN type = 'Laptop' THEN 1 ELSE 2 END) num, maker , type
FROM Product
GROUP by maker, type)

SELECT num, CASE WHEN t2.num = (SELECT MIN(num) FROM t t1 where t2.maker = t1.maker) THEN t2.maker ELSE '' END maker, type
FROM t t2
