SELECT name || country FROM cities;

SELECT name || ', ' || country FROM cities;

SELECT name || ', ' || country AS location FROM cities;

SELECT CONCAT(name, country) AS location FROM cities;

SELECT CONCAT(name, ', ', country) AS location FROM cities;

SELECT
  CONCAT(UPPER(name), ', ', UPPER(country)) AS location
FROM
  cities;

SELECT
  UPPER(CONCAT(name, ', ', country)) AS location
FROM
  cities;