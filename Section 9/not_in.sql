SELECT name, department
FROM products
WHERE department NOT IN (
  SELECT department
  FROM products
  WHERE price < 100
)