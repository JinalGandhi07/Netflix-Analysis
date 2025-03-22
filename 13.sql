-- 13. Find how many movies actor 'Salman Khan' appeared in last 10 years!
select * from NetflixMovies
where type='Movie' and cast like '%Salman Khan%'
and release_year  >= year(DATEADd(YEAR, -10, GETDATE()))
