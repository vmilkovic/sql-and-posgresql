SELECT
    name,
    price,
    CASE
        WHEN price > 600 THEN 'heigh'
        WHEN price > 300 THEN 'medium'
        ELSE 'cheap'
    END
FROM products;