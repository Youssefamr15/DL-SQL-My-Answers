with salary_ranking as 
  (
  SELECT *, dense_rank() over(order by salary desc) as ranking
  FROM employee
 )

select salary
from salary_ranking
where ranking = 2;
