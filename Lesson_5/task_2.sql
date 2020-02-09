-- 2.Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR 
-- и в них долгое время помещались значения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу 
-- DATETIME, сохранив введеные ранее значения.

USE shop_ip;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '20.10.2017 8:10', '20.10.2018 9:10'),
  ('Наталья', '1984-11-12', '30.10.2017 8:10', '30.10.2018 9:10'),
  ('Александр', '1985-05-20', '10.10.2017 8:10', '10.10.2018 9:10'),
  ('Сергей', '1988-02-14', '20.12.2017 8:10', '20.12.2018 9:10'),
  ('Иван', '1998-01-12', '20.11.2017 3:10', '20.11.2018 5:10'),
  ('Мария', '1992-08-29', '20.10.2013 8:10', '20.10.2013 12:10');

update users 
	SET
		created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
		updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

ALTER TABLE users 
	MODIFY created_at DATETIME;

ALTER TABLE users
	MODIFY updated_at DATETIME;