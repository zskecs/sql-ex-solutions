select name
from ships JOIN classes
ON ships.class=classes.class
WHERE bore=16
union
select ship
from outcomes JOIN classes
ON outcomes.ship=classes.class
and bore=16
