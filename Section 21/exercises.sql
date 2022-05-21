SELECT id FROM users ORDER BY id DESC LIMIT 3;

SELECT username, caption FROM users AS u
JOIN posts AS p ON p.user_id = u.id
WHERE u.id = 200

SELECT username, COUNT(*)
FROM users
JOIN likes ON likes.user_id = users.id
GROUP BY username;
