SELECT TOP 1 with tieS
count(distinct t.trip_no)qty, date
FROM Trip t JOIN Pass_in_trip p ON t.trip_no=p.trip_no
WHERE town_from = 'Rostov'
GROUP by date
ORDER by count(distinct t.trip_no) DESC
SELECT TOP 1 with tieS
count(distinct t.trip_no)qty, date
FROM Trip t JOIN Pass_in_trip p ON t.trip_no=p.trip_no
WHERE town_from = 'Rostov'
GROUP by date
ORDER by count(distinct t.trip_no) DESC
