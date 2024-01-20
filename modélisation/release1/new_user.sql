CREATE USER 'user_demo'@'localhost' IDENTIFIED BY 'user_demo';
GRANT ALL PRIVILEGES ON * . * TO 'user_demo'@'localhost';
ALTER USER 'user_demo'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';