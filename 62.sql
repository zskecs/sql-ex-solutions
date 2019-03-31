SELECT t1.remain-t2.remain
FROM (SELECT SUM(inc) Remain FROM income_o WHERE date < '2001-04-15')t1, (SELECT SUM(out)Remain FROM outcome_o WHERE date < '2001-04-15')t2
