-- Author: Bintang Fajarianto
-- Date: May 7 2024

select city.name from city join country on country.code = city.countrycode where country.continent = "Africa";