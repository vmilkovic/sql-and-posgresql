CREATE INDEX ON users (username);

DELETE INDEX users_username_idx;

SELECT pg_size_pretty(pg_relation_size('users'));

SELECT pg_size_pretty(pg_relation_size('users_username_idx'));

SELECT relname, relkind
FROM pg_class
WHERE relkind = 'i';
