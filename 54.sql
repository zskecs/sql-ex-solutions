SELECT CAST(AVG(numguns+0.0) AS DECIMAL(4,2))
FROM(

SELECt numGuns, ship AS name, type FROM Outcomes, Classes where classes.class = Outcomes.ship

UNION 

SELECT numGuns, name, type

FROM Ships, Classes WHERE ships.class = Classes.class

) db1

WHERE type = 'bb'
