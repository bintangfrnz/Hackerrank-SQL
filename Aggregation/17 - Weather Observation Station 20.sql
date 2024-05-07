-- Author: Bintang Fajarianto
-- Date: May 7 2024

select round(S.lat_n, 4)
from station as S
where (
    select count(lat_n) from station where lat_n < S.lat_n
) = (
    select count(lat_n) from station where lat_n > S.lat_n
);