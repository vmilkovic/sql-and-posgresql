SELECT name, department, price
FROM products
WHERE price > SOME (
    SELECT price
    FROM products
    WHERE department = 'Industrial'
)
