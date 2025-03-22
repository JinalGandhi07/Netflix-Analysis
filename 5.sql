-- 5. Identify the longest movie
select * from NetflixMovies where CAST( REPLACE(duration,' min','') as int) in(
select max(CAST( REPLACE(duration,' min','') as int)) newDuration from NetflixMovies
where type='Movie') and
type='Movie' 


