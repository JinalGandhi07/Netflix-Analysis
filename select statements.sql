select * from NetflixMovies

--total content
select count(*) TotalContent from NetflixMovies

--what are different types of content
select distinct (type) type from NetflixMovies