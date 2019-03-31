select class, count(*)
from (select class, name from ships
union
select ship as class, ship as name
from outcomes
where ship in (select class from classes)) as a
join outcomes b on name=ship
where result='sunk' and class in
(select class from
(select  class, name from ships
union
select ship as class, ship as name
from outcomes
where ship in (select class
from classes))  c
group by class
having count(*)>=3)
group by class
