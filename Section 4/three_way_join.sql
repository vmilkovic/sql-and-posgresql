SELECT url, contents, username
FROM comments 
JOIN photos ON photos.id = comments.photo_id
JOIN users ON users.id = comments.user_id AND users.id = photos.user_id
WHERE comments.user_id = photos.user_id;