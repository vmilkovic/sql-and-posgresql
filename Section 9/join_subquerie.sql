SELECT first_name
FROM users
JOIN (
	SELECT user_id FROM orders WHERE product_id = 3 
) AS o
ON o.user_id = users.id