select distinct ship, displacement, numguns
from Classes left join Ships
on classes.class=ships.class
right join Outcomes
on Classes.class=ship
or ships.name=ship
where battle='Guadalcanal'
