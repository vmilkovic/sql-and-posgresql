SHOW data_directory;

SELECT oid, datname FROM pg_database;

SELECT * FROM pg_class;

SELECT oid FROM pg_class WHERE relname='users'; --file name of users table data
