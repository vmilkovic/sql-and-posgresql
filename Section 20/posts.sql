CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    url VARCHAR(200) NOT NULL,
    caption VARCHAR(240),
    lat REAL CHECK(lat IS NULL OR (lat >= -90 AND lat <= 90)),
    lng REAL CHECK(lng IS NULL OR (lng >= -180 AND lng <= 180)),
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);