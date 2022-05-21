CREATE TABLE hashtags_posts (
    id SERIAL PRIMARY KEY,
    hashtag_id INTEGER NOT NULL REFERENCES hashtags(id) ON DELETE CASCADE,
    post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    UNIQUE(hashtag_id, post_id)
);