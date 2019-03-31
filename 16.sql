select DISTINCT a.model, b.model, a.speed, b.ram
FROM PC AS a, PC b
WHERE a.speed = b.speed AND a.ram = b.ram AND  a.model != b.model AND a.model >b.model
