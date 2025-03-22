-- 4. Find the top 5 countries with the most content on Netflix

--select * from NetflixMovies

with cte as(
SELECT value countries, *
FROM NetflixMovies
    CROSS APPLY STRING_SPLIT(country, ',')
	where country is not null
	),
cte2 as(
select TRIM(countries) countries1, * from cte
)
select top 5 countries1, count(*) TotalContent from cte2
where not countries =''
group by countries1
order by count(*) desc

