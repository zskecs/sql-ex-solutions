WITH table1 AS (SELECT distinct  tt.town_from, tt.town_to, (SELECT COUNT(1) qty
FROM (SELECT distinct  trip_no, town_from, town_to
FROM Trip p
WHERE p.town_to = tt.town_to AND p.town_FROM = tt.town_FROM
) ab) qty
FROM Trip tt
) 

SELECT COUNT(qty) qty
FROM table1
WHERE QTY = (SELECT max(qty) FROM table1)
WITH table1 AS (SELECT distinct  tt.town_from, tt.town_to, (SELECT COUNT(1) qty
FROM (SELECT distinct  trip_no, town_from, town_to
FROM Trip p
WHERE p.town_to = tt.town_to AND p.town_FROM = tt.town_FROM
) ab) qty
FROM Trip tt
) 

SELECT COUNT(qty) qty
FROM table1
WHERE QTY = (SELECT max(qty) FROM table1)
