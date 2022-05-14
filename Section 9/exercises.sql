SELECT name, price, price / (
    SELECT MAX(price) FROM phones
) AS price_ratio 
FROM phones;

SELECT MAX(p.avg_price) AS max_average_price
FROM (
    SELECT AVG(price) AS avg_price
    FROM phones
    GROUP BY manufacturer
) AS p;

SELECT name, price
FROM phones
WHERE price >
(
    SELECT price 
    FROM phones 
    WHERE name="S5620 Monte"
)

SELECT name
FROM phones
WHERE price > ALL (
    SELECT price
    FROM phones
    WHERE manufacturer = 'Samsung'
)

SELECT (
  SELECT MAX(price) FROM phones
) AS max_price, (
  SELECT MIN(price) FROM phones
) AS min_price, (
  SELECT AVG(price) FROM phones
) AS avg_price;