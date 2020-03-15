use films;

drop procedure if exists films_offers;

delimiter //
create procedure films_offers(in for_films_id BIGINT)
begin
	-- общий режиссер
	select f2.id
	from films f1
	join films f2 on f1.film_director = f2.film_director
	where f1.id = for_films_id 
		and f2.id <> for_films_id
	
		union
	
	-- общий актер
	select af2.film_id
	from actor_filmography af1
	join actor_filmography af2 on af1.actor_id = af2.actor_id 
	where af1.film_id = for_films_id 
		and af2.film_id <> for_films_id

		union

	-- общий рейтинг
	select fs2.film_idx
	from films_statistics fs1
	join films_statistics fs2 on fs1.movie_rating = fs2.movie_rating 
	where fs1.film_idx = for_films_id 
		and fs2.film_idx <> for_films_id
	
	order by rand()
	limit 5
;
end//
delimiter ;

call films_offers(39); 
