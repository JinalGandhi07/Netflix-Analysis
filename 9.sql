-- 9. Count the number of content items in each genre

with cte as(
SELECT value genre, *
FROM NetflixMovies
    CROSS APPLY STRING_SPLIT(listed_in, ',')
	where director is not null
	),
cte2 as(
select TRIM(genre) genre1, * from cte
)
select genre1 genre, count( *) totalContent from  cte2
group by genre1
