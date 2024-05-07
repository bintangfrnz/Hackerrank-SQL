-- Author: Bintang Fajarianto
-- Date: May 7 2024

select round(sum(lat_n), 4)
from station
where lat_n > 38.7880 and lat_n < 137.2345;