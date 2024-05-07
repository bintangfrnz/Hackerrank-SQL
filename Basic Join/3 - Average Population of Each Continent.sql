-- Author: Bintang Fajarianto
-- Date: May 7 2024

select country.continent, floor(avg(city.population)) from country join city on city.countrycode = country.code group by country.continent;