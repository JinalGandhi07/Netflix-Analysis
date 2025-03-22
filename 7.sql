-- 7. Find all the movies/TV shows by director 'Rajiv Chilaka'!

with cte as(
SELECT value directors, type,title
FROM NetflixMovies
    CROSS APPLY STRING_SPLIT(director, ',')
	where director is not null
	),
cte2 as(
select TRIM(directors) directors1, type,title from cte
)
select  type, title TotalContent from cte2
where  directors1 ='Rajiv Chilaka'
