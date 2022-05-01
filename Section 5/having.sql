SELECT photo_id, COUNT(*)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;

SELECT user_id, COUNT(*)
FROM comments
WHERE photo_id <= 50
GROUP BY user_id
HAVING COUNT(*) > 20;

--exercise
SELECT manufacturer, SUM(price * units_sold)
FROM phones
GROUP BY manufacturer
HAVING SUM(price * units_sold) > 2000000
