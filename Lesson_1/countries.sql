DROP DATABASE IF EXISTS `countries and cities`;
CREATE database `countries and cities`;
USE `countries and cities`;

ALTER DATABASE `countries and cities` CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;


DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) COMMENT 'Название страны',
    location VARCHAR(255) COMMENT 'Местоположение',
    description TEXT COMMENT 'Описание',
    capital VARCHAR(255) COMMENT 'Столица',
    
    INDEX country_name_location_idx(country_name, location)
);

 INSERT INTO countries (country_name, location, description, capital) VALUES
  ('Канада', 'Северная Америка', 'Государство в Северной Америке, занимает второе место в мире по площади. Омывается Атлантическим, Тихим и Северным Ледовитым океанами, имея самую длинную береговую линию в мире.', 'Оттава'),
  ('Россия', 'Восточная Европа и Северная Азия', 'Крупнейшее в мире государство, занимающее 1/8 часть суши и расположенное на северо-востоке Евразии.', 'Москва'),
  ('Япония', 'Островное государство в Восточной Азии', 'Поэтическое название — Страна восходящего солнца. Расположена на Японском архипелаге, состоящем из 6852 островов.', 'Токио'),
  ('Португалия', 'Cамое западное государство в континентальной Европе', 'Расположена в юго-западной части Пиренейского полуострова. На севере и востоке граничит с Испанией, на юге и западе омывается Атлантическим океаном', 'Лиссабон'),
  ('ЮАР', 'Юг Африки', 'Является одной из самых национально разнообразных стран Африки и имеет наибольшую долю белого, азиатского и смешанного населения на континенте', 'Претория');
  
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id SERIAL PRIMARY KEY,
    country_id BIGINT UNSIGNED NOT NULL,
    name VARCHAR(255) COMMENT 'Название города',
    region VARCHAR(255) COMMENT 'Область/район',
    FOREIGN KEY (country_id) REFERENCES countries(id)
);

 INSERT INTO cities (country_id, name, region) values
   ('2', 'Рязань', 'Рязанская область'),
   ('3', 'Фукуока', 'Префектура Фукуока'),
   ('1', 'Ванкувер', 'Провинция Британская Колумбия');
   
 