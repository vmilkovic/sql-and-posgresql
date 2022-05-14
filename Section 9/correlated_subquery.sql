SELECT name, department, price
FROM products AS p1
WHERE p1.price = (
    SELECT MAX(price)
    FROM products AS p2
    WHERE p1.department = p2.department
);

SELECT name, (
    SELECT COUNT(*)
    FROM orders AS o1
    WHERE o1.product_id = p1.id
) AS quantity
FROM products AS p1;

--Without FROM
SELECT (
  SELECT MAX(price) FROM products
);

SELECT (
  SELECT MAX(price) FROM products
) / (
  SELECT MIN(price) FROM products
);

SELECT (
  SELECT MAX(price) FROM products
) / (
  SELECT AVG(price) FROM products
);

SELECT (
  SELECT MAX(price) FROM products
), (
  SELECT AVG(price) FROM products
);