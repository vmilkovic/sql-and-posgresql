-- join query
SELECT username, COUNT(*)
FROM users
JOIN (
    SELECT user_id FROM photo_tags
    UNION ALL
    SELECT user_id FROM caption_tags
) AS tags ON tags.user_id = users.id
GROUP BY username
ORDER BY COUNT(*) DESC;

-- with view
SELECT username, COUNT(*)
FROM users
JOIN tags ON tags.user_id = users.id
GROUP BY username
ORDER BY COUNT(*) DESC;