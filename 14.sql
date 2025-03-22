-- 14. Find the top 10 actors who have appeared in the highest number of movies produced in India.
with cte as(
select Trim(value) casts, * from NetflixMovies
cross apply string_split(cast, ',')
where
type='Movie' and country like '%India%'
)
select top 10 casts from cte group by casts
order by count(casts) desc