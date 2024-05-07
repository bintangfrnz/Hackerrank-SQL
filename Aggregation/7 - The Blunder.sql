-- Author: Bintang Fajarianto
-- Date: May 7 2024

select ceil(avg(salary) - avg(replace(salary, "0", ""))) from employees;