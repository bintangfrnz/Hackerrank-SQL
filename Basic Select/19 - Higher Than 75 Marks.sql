-- Author: Bintang Fajarianto
-- Date: May 7 2024

select name from students where marks > 75 order by right(name, 3) asc, id asc;