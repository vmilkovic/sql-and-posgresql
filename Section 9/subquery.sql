SELECT name, price
FROM products
WHERE price > (
  SELECT MAX(price) 
  FROM products 
  WHERE department = 'Toys'
);

SELECT
  p1.name,
  (SELECT COUNT(name) FROM products)
FROM (SELECT * FROM products) AS p1
JOIN (SELECT * FROM products) AS p2 ON p1.id = p2.id
WHERE p1.id IN (SELECT id FROM products);

SELECT name, price, (
  SELECT MAX(price) FROM products
) FROM products
WHERE price > 867;

SELECT name, price, (
  SELECT price FROM products WHERE id=3
) AS id_3_price FROM products
WHERE price > 867;