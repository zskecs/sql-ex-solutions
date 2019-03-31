SELECT income.point, income.date, 'inc' as operation, SUM(income.inc) as money_sum

FROM INCOME FULL JOIN OUTCOME ON income.date = outcome.date AND income.point = outcome.point
WHERE outcome.out IS NULL
GROUP BY income.point, income.date

UNION 

SELECT outcome.point, outcome.date,'out' as operation, SUM(outcome.out) as money_sum

FROM INCOME FULL JOIN OUTCOME ON income.date = outcome.date AND income.point = outcome.point
WHERE income.inc IS NULL
GROUP BY outcome.point, outcome.date
