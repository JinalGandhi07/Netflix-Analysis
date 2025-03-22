/*
Question 15:
Categorize the content based on the presence of the keywords 'kill' and 'violence' in 
the description field. Label content containing these keywords as 'Bad' and all other 
content as 'Good'. Count how many items fall into each category.
*/

with cte as(
select 
case when LOWER( description) like '%kill%' or   LOWER( description) like '%violence%' then 'BAD'
else 'GOOD'
end
as category
from NetflixMovies
)
select count(*) count, category from cte
group by category


--------------------------------- direct
select 
case when LOWER( description) like '%kill%' or   LOWER( description) like '%violence%' then 'BAD'
else 'GOOD'
end
as category,
count(*)
from NetflixMovies
group by case when LOWER( description) like '%kill%' or   LOWER( description) like '%violence%' then 'BAD'
else 'GOOD'
end