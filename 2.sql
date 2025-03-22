--select * from NetflixMovies
-- 2. Find the most common rating for movies and TV shows
with cte as(
select count(rating) count, rating, type
from NetflixMovies
where rating is not null
group by rating, type
),
cte2 as(
select DENSE_RANK() over (partition by type order by count desc) rank, count, rating,type from cte)
select rating,type from cte2 where rank=1

