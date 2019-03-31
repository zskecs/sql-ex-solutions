WITH P AS (SELECT trip_no,  
CASE WHEN time_out > time_in THEN datediff(mi, time_out, time_in)+1440 Else datediff(mi, time_out, time_in) 
END as time
from trip)

SELECT (select name from passenger where passenger.id_psg = pass_in_trip.id_psg) , sum(time) as time
FROM P join pass_in_trip on pass_in_trip.trip_no = p.trip_no  
GROUP BY pass_in_trip.id_psg
HAVING  count(pass_in_trip.place)=count(distinct pass_in_trip.place)
