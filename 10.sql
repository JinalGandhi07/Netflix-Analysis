-- 10. Find each year and the average numbers of content release by India on netflix. 
-- return top 5 year with highest avg content release !

with cte as(
select cast(count(*)  as float) count1, release_year,
(select cast(count(*) as float) from NetflixMovies where country like '%India%' ) as totalContentIndia
from NetflixMovies 
where country like '%India%'
group by release_year
)
select Round(cast(count1 /totalContentIndia *100 as float) ,2) avg_release, release_year from cte