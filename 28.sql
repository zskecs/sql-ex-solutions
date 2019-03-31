select count(*)
from
(select maker
from product
group by maker
having count(model)=1
) as res
