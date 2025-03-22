-- Netflix Data Analysis using SQL
select * from NetflixMovies
-- Solutions of 15 business problems

-- 1. Count the number of Movies vs TV Shows
select type, count (*) Totalnumber from NetflixMovies
group by type

