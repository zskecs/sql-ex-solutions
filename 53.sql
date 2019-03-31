SELECT CAST(AVG(numGuns+0.0) as DECIMAL(4,2))
FROM (SELECT numGuns FROM Classes  WHERE type = 'BB'
) gb1
