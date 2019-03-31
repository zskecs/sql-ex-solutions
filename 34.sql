SELECT  name
FROM Ships, Classes
WHERE Ships.class = Classes.class AND displacement > 35000 AND launched >= 1922 AND type= 'bb'
