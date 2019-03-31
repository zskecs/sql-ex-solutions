WITH table1 AS(SELECT pA.ID_psg, COUNT(pA.ID_psg) as trip_Qty,  max(count(1)) over() as max 
FROM Pass_in_trip pa JOIN Trip t ON t.trip_no = pa.trip_no 
GROUP by pa.ID_psg
HAVING count(DISTINCT t.id_comp) = 1)

SELECT name, trip_qty
FROM table1 t JOIN passenger p
ON t.id_psg = p.id_psg
WHERE max = trip_Qty
