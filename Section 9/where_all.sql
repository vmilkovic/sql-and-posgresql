SELECT name, department, price
FROM products
WHERE price > ALL (
    SELECT price FROM products WHERE department = 'Industrial'
)