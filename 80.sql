SELECT maker 
FROM Product 


except
SELECT maker 
     FROM product  
     WHERE type='PC' AND model NOT IN ( 
          SELECT model 
          FROM PC)
