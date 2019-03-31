select ROW_NUMBER() OVER(ORDER BY count_m desc, maker, model asc)num, maker, model
from (
select p1.maker, model, count_m
from product p1 join 
(select  maker, count(maker) count_m
from product
group by maker) p2 on p1.maker=p2.maker
) a1
