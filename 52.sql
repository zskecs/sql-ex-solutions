SELECT distinct name
FROM Classes JOIN Ships ON Classes.class = Ships.class
WHERE CASE WHEN country is NULL THEN 'Japan' ELSE country END ='Japan' 
AND CASE WHEN numguns is NULL THEN 9 ELSE numguns END >=9 
and CASE WHEN BORE is NULL  THEN 18 ELSE bore END < 19 
and case when type is null then 'bb' else type end  = 'bb'

AND CASE WHEN displacement is NULL THEN 65000 ELSE displacement END <=65000
SELECT distinct name
FROM Classes JOIN Ships ON Classes.class = Ships.class
WHERE CASE WHEN country is NULL THEN 'Japan' ELSE country END ='Japan' 
AND CASE WHEN numguns is NULL THEN 9 ELSE numguns END >=9 
and CASE WHEN BORE is NULL  THEN 18 ELSE bore END < 19 
and case when type is null then 'bb' else type end  = 'bb'

AND CASE WHEN displacement is NULL THEN 65000 ELSE displacement END <=65000
