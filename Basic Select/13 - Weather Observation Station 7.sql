-- Author: Bintang Fajarianto
-- Date: May 7 2024

select distinct city from station where right(city, 1) in ('a', 'e', 'i', 'o', 'u');