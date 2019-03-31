WITH cte AS(SELECT ship AS name, class, numGuns, bore, displacement FROM Outcomes, Classes where classes.class = Outcomes.ship

UNION 

SELECT name, i.class, numGuns, bore, displacement
FROM Ships, Classes i WHERE ships.class = i.class)


SELECT  cte.name
    FROM    cte
            JOIN ( SELECT   cte.displacement ,
                            MAX(cte.numGuns) AS MaxNumGun
                   FROM     cte
                   GROUP BY cte.displacement
                 ) AS M ON cte.displacement = M.displacement
                           AND cte.numguns = M.MaxNumGun
