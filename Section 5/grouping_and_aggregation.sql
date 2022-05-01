SELECT user_id, COUNT(id) AS num_comments_created
FROM comments
GROUP BY user_id;

SELECT user_id, COUNT(user_id) AS num_comments_created
FROM comments
GROUP BY user_id;

-- don't count null values
SELECT COUNT(user_id) FROM photos;

-- count null values
SELECT COUNT(*) FROM photos;

SELECT user_id, COUNT(*)
FROM comments
GROUP BY user_id

SELECT photo_id, COUNT(*)
FROM comments
GROUP BY photo_id