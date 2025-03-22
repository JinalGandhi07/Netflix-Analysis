-- 8. List all TV shows with more than 5 seasons


select * from NetflixMovies
where 
type='TV Show' and
 CAST( SUBSTRING(duration,0,CHARINDEX(' ',duration,0)) as int)  > 5

