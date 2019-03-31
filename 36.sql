WITH union1 (name) AS
    (SELECT name FROM ships WHERE name = class
     
     UNION 
     
     SELECT ship FROM outcomes 
     INNER JOIN classes ON (classes.class = outcomes.ship))
SELECT DISTINCT name FROM union1
