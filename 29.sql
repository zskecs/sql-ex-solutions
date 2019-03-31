SELECT i.point, i.date, i.inc, o.out
FROM income_o i
LEFT JOIN outcome_o o ON i.point = o.point AND i.date = o.date

UNION
SELECT o.point, o.date, i.inc, o.out
FROM outcome_o o
LEFT JOIN income_o i ON o.point = i.point AND o.date = i.date
