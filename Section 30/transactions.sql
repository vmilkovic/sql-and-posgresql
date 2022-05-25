CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    balance INTEGER NOT NULL
);

INSERT INTO accounts (name, balance)
VALUES
    ('Gia', 100),
    ('Alyson', 100);

-- connection 1
BEGIN

UPDATE accounts
SET balance = balance - 50
WHERE name = 'Alyson';

SELECT * FROM accounts;

-- connection 2

UPDATE accounts
SET balance = balance + 50
WHERE name = 'Gia';

SELECT * FROM accounts;

-- connection 1
COMMIT

SELECT * FROM accounts;
