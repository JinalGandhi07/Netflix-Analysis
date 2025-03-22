-- 6. Find content added in the last 5 years
select * from NetflixMovies where cast(date_added as datetime) > DATEADd(YEAR, -5, GETDATE())
order by cast(date_added as datetime)
