-- Author: Bintang Fajarianto
-- Date: May 7 2024

select salary * months as total_earning, count(*)
from employee
group by total_earning
order by total_earning desc
limit 1;