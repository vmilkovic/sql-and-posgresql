UPDATE accounts
SET balance = 100;

SELECT * FROM accounts;

-- connection 1
BEGIN;

UPDATE accounts
SET balance = balance - 50
WHERE name = 'Alyson';

SELECT * FROM accounts;

--in dashboard close connections should destroy the transactions
