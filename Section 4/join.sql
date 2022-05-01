SELECT contents, username
FROM comments
JOIN users ON users.id = comments.user_id;

SELECT contents, url
FROM comments
JOIN photos ON photos.id = comments.photo_id;

SELECT comments.id, photos.id
FROM comments
JOIN photos ON photos.id = comments.photo_id;

SELECT comments.id AS comments_id, photos.id AS photos_id
FROM comments
JOIN photos ON photos.id = comments.photo_id;

SELECT comments.id AS comments_id, p.id AS photos_id
FROM photos AS p
JOIN comments ON p.id = comments.photo_id;

SELECT c.id AS comments_id, p.id AS photos_id
FROM photos AS p
JOIN comments AS c ON p.id = c.photo_id;