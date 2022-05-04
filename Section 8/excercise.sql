SELECT manufacturer 
FROM phones 
WHERE price < 170
UNION
SELECT manufacturer 
FROM phones 
GROUP BY manufacturer 
HAVING COUNT(*) > 2;