CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    department VARCHAR(40),
    price INTEGER,
    weight INTEGER
);

INSERT INTO products (name, department, price, weight)
VALUES ('Shirt', 'Clothes', 20, 1);

INSERT INTO products (name, department, weight)
VALUES ('Pants', 'Clothes', 1);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    department VARCHAR(40),
    price INTEGER NOT NULL,
    weight INTEGER
);

UPDATE products SET price = 999 WHERE price IS NULL;

ALTER TABLE products
ALTER COLUMN price
SET NOT NULL;


CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    department VARCHAR(40) NOT NULL,
    price INTEGER NOT NULL,
    weight INTEGER
);

ALTER TABLE products
ALTER COLUMN name
SET NOT NULL;

ALTER TABLE products
ALTER COLUMN department
SET NOT NULL;

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    department VARCHAR(40) NOT NULL,
    price INTEGER DEFAULT 999,
    weight INTEGER
);

ALTER TABLE products
ALTER COLUMN price
SET DEFAULT 9999;

INSERT INTO products (name, department, weight)
VALUES ('Gloves', 'Tools', 1);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) UNIQUE NOT NULL,
    department VARCHAR(40) NOT NULL,
    price INTEGER DEFAULT 999,
    weight INTEGER
);

ALTER TABLE products
ADD UNIQUE (name);

ALTER TABLE products
DROP CONSTRAINT products_name_key;

ALTER TABLE products
ADD UNIQUE (name, department);

INSERT INTO products (name, department, price, weight)
VALUES ('Shirt', 'Housewares', 24, 1);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) UNIQUE NOT NULL,
    department VARCHAR(40) NOT NULL,
    price INTEGER CHECK (price > 0),
    weight INTEGER
);

ALTER TABLE products
ADD CHECK (price > 0);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    est_delivery TIMESTAMP NOT NULL,
    CHECK (created_at < est_delivery)
);

INSERT INTO orders (name, created_at, est_delivery)
VALUES ('Shirt', '2020-NOV-20 01:00AM'::TIMESTAMP, '2020-NOV-25 01:00AM'::TIMESTAMP)
