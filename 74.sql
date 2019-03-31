SELECT  country, class
FROM classes
WHERE country = ALL (SELECT   country
FROM classes
WHERE country = 'Russia')
