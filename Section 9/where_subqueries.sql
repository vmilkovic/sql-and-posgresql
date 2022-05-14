SELECT id
FROM orders
WHERE product_id IN (
  SELECT id FROM products WHERE price / weight > 50
);


SELECT name
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
)