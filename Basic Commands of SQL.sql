CREATE DATABASE IF NOT EXISTS SQL_Practice;

USE SQL_Practice;

SHOW TABLES;

CREATE TABLE vstech (
id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
salary INT NOT NULL
);

SELECT * FROM vstech;

INSERT INTO vstech (id, name, salary)
VALUES
(101, 'Satya', 50000),
(102, 'Sundhar', 50500),
(103, 'Sumanth', 35000),
(104, 'Sathwik', 35000);
