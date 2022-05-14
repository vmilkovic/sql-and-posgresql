SELECT LEAST(1, 20, 50, 100);

SELECT name, price, LEAST(price * 0.5, 400)
FROM products;