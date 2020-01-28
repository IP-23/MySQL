-- Задание 2. Создайте базу данных example, разместите в ней таблицу users, 
-- состоящую из двух столбцов, числового id и строкового name.

DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL COMMENT 'Первичный ключ таблицы' ,
name VARCHAR(255) COMMENT 'Имя пользователя'
);