SELECT DISTINCT point,date,SUM(out) AS out, SUM(inc) AS inc FROM (
SELECT Income.point, Income.date, out, inc
FROM Income LEFT JOIN
Outcome ON Income.point = Outcome.point AND
Income.date = Outcome.date AND Income.code= Outcome.code

UNION ALL

SELECT Outcome.point, Outcome.date, out, inc
FROM Outcome LEFT JOIN
Income ON Income.point = Outcome.point AND
	Income.date = Outcome.date AND Income.code=Outcome.code) AS t1		

GROUP BY point, date
