CREATE VIEW tags AS (
    SELECT id, created_at, user_id, post_id, 'photo_tag' AS type FROM photo_tags
    UNION ALL
    SELECT id, created_at, user_id, post_id, 'caption_tag' AS type FROM caption_tags
);

SELECT * FROM tags;

SELECT * 
FROM tags
WHERE type = 'caption_tag';

CREATE VIEW recent_posts AS (
    SELECT *
    FROM posts
    ORDER BY created_at DESC
    LIMIT 10
);

SELECT * FROM recent_posts;

SELECT *
FROM recent_posts
JOIN users ON users.id = recent_posts.user_id;

CREATE OR REPLACE VIEW recent_posts AS (
    SELECT *
    FROM posts
    ORDER BY created_at DESC
    LIMIT 15
);

DROP VIEW recent_posts;
