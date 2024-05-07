-- Author: Bintang Fajarianto
-- Date: May 7 2024

select sum(city.population) from country left join city on country.code = city.countrycode where country.continent = "Asia";