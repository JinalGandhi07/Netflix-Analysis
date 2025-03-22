-- 11. List all movies that are documentaries
select * from NetflixMovies
where type in ('Movie')
and listed_in like '%Documentaries%'