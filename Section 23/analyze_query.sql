-- With index: 0.075ms
EXPLAIN ANALYZE SELECT *
FROM users
WHERE username = 'Emil30';

-- Without index: 1.250ms
EXPLAIN ANALYZE SELECT *
FROM users
WHERE username = 'Emil30';