SELECT distinct Classes.class

FROM Classes LEFT JOIN Ships ON Classes.class = Ships.class LEFT JOIN Outcomes ON Outcomes.ship = ships.name OR Outcomes.ship = Classes.class

WHERE result = 'sunk'
