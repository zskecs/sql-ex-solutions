with table1 as (
select point, date, inc from income
union all
select point, date, -out as inc from outcome
)

SELECT distinct point, CONVERT(varchar, date, 103), (SELECT SUM(inc) 
   FROM table1 
   WHERE point = o.point AND date <= o.date) rem 
FROM table1 o
with table1 as (
select point, date, inc from income
union all
select point, date, -out as inc from outcome
)

SELECT distinct point, CONVERT(varchar, date, 103), (SELECT SUM(inc) 
   FROM table1 
   WHERE point = o.point AND date <= o.date) rem 
FROM table1 o
