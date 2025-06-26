CREATE DATABASE testdb;
USE testdb;
CREATE TABLE users (id INT, name VARCHAR(20));
INSERT INTO users VALUES(1, 'vagrant_test');

CREATE USER 'vagrant_test'@'192.168.50.10' IDENTIFIED BY 'Tusur123';
GRANT ALL PRIVILEGES ON testdb.* TO 'vagrant_test'@'192.168.50.10';
FLUSH PRIVILEGES;