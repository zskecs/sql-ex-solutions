with table1 AS (SELECT  max(name) name,  SUM(CASE WHEN time_out > time_in THEN datediff(mi, time_out, time_in)+1440 Else datediff(mi, time_out, time_in) END) as time_in_min, max(SUM(CASE WHEN time_out > time_in THEN datediff(mi, time_out, time_in)+1440 Else datediff(mi, time_out, time_in) END))OVER() maxm
FROM Trip tr JOIN Pass_in_trip pip ON tr.trip_no = pip.trip_no JOIN Passenger pa ON pa.id_psg = pip.id_psg
GROUP by pa.id_psg
)

SELECT name, time_in_min
from table1
WHERE time_in_min = maxm
