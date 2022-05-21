CREATE EXTENSION pageinspect;

SELECT * FROM bt_metap('users_username_idx');

SELECT * FROM bt_page_items('users_username_idx', 3);