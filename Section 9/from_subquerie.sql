SELECT name, price / weight AS price_weight_ratio
FROM products;

SELECT name, price_weight_ratio
FROM (
    SELECT name, price / weight AS price_weight_ratio
    FROM products
) AS p
WHERE price_weight_ratio > 5

SELECT * FROM (
    SELECT MAX(price) FROM products
) as p;

SELECT AVG(p.order_count)
FROM (
    SELECT user_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY user_id
) AS p