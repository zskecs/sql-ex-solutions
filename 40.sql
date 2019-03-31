SELECT Classes.class, name,  country
FROM Ships JOIN Classes on Ships.class = Classes.class
WHERE numGuns >= 10
