use films;

-- 1. Средние кассовые сборы
select AVG(box_office) as 'Кассовые сборы, млн. долл.'
from films_statistics;

-- 2. Объединение подробного описания фильма с годом его создания с сортировкой по убыванию

select name, film_plot, created_at
from films f 
join full_description fd on f.id = fd.film_id
order by f.created_at desc;

-- 3. Количество фильмов снятых каждым режиссером

select
	producer.id ,
	producer.full_name ,
	count(*) as 'Количество отснятых фильмов из топ-100'
from producer
join producer_filmography on producer.id = producer_filmography.producer_id 
group by producer.id 
order by count(*) desc;

-- 4. Фильм и его продолжение

select 
	name,
	(select name from next_films where film_id = films.id) as 'next film'
from films;