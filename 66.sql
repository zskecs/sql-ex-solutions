WITH t1 AS (
SELECT CAST('2003-04-01' AS DATETIME) 'date' 
     UNION ALL
     SELECT DATEADD(dd, 1, t.date) 
       FROM t1 t
where t.date <'2003-04-07'
)

SELECT tt.date, (SELECT COUNT(1) FROM (SELECT DISTINCT t.trip_no
FROM pass_in_trip pip, trip t
WHERE pip.trip_no = t.trip_no
AND t.town_from = 'rostov'
AND tt.date = pip.date) trips )Qty
FROM t1 tt
