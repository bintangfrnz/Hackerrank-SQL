-- Author: Bintang Fajarianto
-- Date: May 7 2024

select distinct(city), length(city) from station order by length(city) asc, city asc limit 1;
select distinct(City), length(city) from station order by length(city) desc, city asc limit 1;