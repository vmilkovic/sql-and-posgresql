-- UNION JOINS TWO QUERIES
(
    SELECT *
    FROM products
    ORDER BY price DESC
    LIMIT 4
)
UNION
(
    SELECT *
    FROM products
    ORDER BY price / weight DESC
    LIMIT 4
)

-- DON'T REMOVE DUPLICATES WITH UNION ALL
(
    SELECT *
    FROM products
    ORDER BY price DESC
    LIMIT 4
)
UNION ALL
(
    SELECT *
    FROM products
    ORDER BY price / weight DESC
    LIMIT 4
)