-- Author: Bintang Fajarianto
-- Date: May 7 2024

select distinct city from station where left(city, 1) not in ('a', 'e', 'i', 'o', 'u') or right(city, 1) not in ('a', 'e', 'i', 'o', 'u');