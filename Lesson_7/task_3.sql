-- 3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список 
-- рейсов flights с русскими названиями городов.

drop database if exists airport;
create database airport;
use airport;

ALTER DATABASE airport CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;


drop table if exists flights;
create table flights (
	id SERIAL primary key,
	`from` VARCHAR(255) COMMENT 'Откуда рейс',
	`to` VARCHAR(255) COMMENT 'Место назначения'
) COMMENT = 'Рейсы';

insert into flights (`from`, `to`) values
	('moscow', 'omsk'),
	('novgorod', 'kazan'),
	('irkutsk', 'moscow'),
	('omsk', 'irkutsk'),
	('moscow', 'kazan');

drop table if exists cities;
create table cities (
	id SERIAL primary key,
	label VARCHAR(255) COMMENT 'Код города',
	name VARCHAR(255) COMMENT 'Название города'
) COMMENT = 'Список городов';

insert into cities (label, name) values
	('moscow', 'Москва'),
	('novgorod', 'Новгород'),
	('irkutsk', 'Иркутск'),
	('omsk', 'Омск'),
	('kazan', 'Казань');
	
select id,
	   (select name from cities where label = flights.`from`) as `from`,
	   (select name from cities where label = flights.`to`) as `to`
from flights;