-- Author: Bintang Fajarianto
-- Date: May 7 2024

select distinct city from station where right(city, 1) not in ('a', 'e', 'i', 'o', 'u');