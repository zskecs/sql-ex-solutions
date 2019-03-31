SELECT IsNull(t1.s1, 0)-IsNull(t2.s2,0)
FROM (SELECT SUM(inc) s1  FROM income_O )t1, (SELECT SUM(out) s2  FROM outcome_O)t2
