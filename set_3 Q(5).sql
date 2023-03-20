select A.fname , A.salary from(
select fname , salary , dense_rank() over (order by salary desc) as rnk
from employee ) as A 
where rnk = 3;