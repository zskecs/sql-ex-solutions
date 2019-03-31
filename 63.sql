SELECT name
FROM passenger
WHERE id_psg IN 
(SELECT distinct p.id_psg
FROM Pass_in_trip t JOIN Passenger p on t.ID_psg = p.ID_psg  
GROUP by p.id_psg, t.place
HAVING  
COUNT(*) > 1)
