WITH T1 AS (SELECT DISTINCT i.point, SUM(inc) Remain
FROM Income_o i
GROUP BY i.point),
a
T2 AS (SELECT DISTINCT o.point, SUM(out) 
 Remain
FROM Outcome_o o
GROUP BY o.point)

SELECT DISTINCT ISNULL(t1.point,0), ISNULL(t1.remain-t2.remain,0)
FROM t1,t2
WHERE t1.point = t2.point

union
select point P, sum(inc) rem from income_o
where point not in (select point from outcome_o)
group by point
