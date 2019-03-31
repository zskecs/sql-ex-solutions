with table1 as (
select CASE WHEN town_from<=town_to 
THEN town_from+town_to 
ELSE town_to+town_from END ab,
count(*) ct from trip 
group by CASE WHEN town_from<=town_to 
THEN town_from+town_to 
ELSE town_to+town_from END ) 

select count(*) from table1 where ct=(select max(ct) from table1)
