SELECT paid, COUNT(*)
FROM orders
GROUP BY paid

SELECT first_name, last_name, paid
FROM users
JOIN orders ON users.id = orders.user_id;