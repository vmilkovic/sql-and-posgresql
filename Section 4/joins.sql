--INNER JOIN
SELECT url, username
FROM photos
JOIN users ON users.id = photos.user_id;

-- LEFT OUTER JOIN
SELECT url, username
FROM photos
LEFT JOIN users ON users.id = photos.user_id;

-- RIGHT OUTER JOIN
SELECT url, username
FROM photos
RIGHT JOIN users ON users.id = photos.user_id;

-- OUTER JOIN
SELECT url, username
FROM photos
FULL JOIN users ON users.id = photos.user_id;