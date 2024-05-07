-- Author: Bintang Fajarianto
-- Date: May 8 2024

-- First Query
select concat(name, "(", left(occupation, 1), ")") as formatted_name
from occupations
order by formatted_name asc;

-- Second Query
select concat(
    "There are a total of ",
    count(occupation),
    " ",
    lower(occupation),
    "s."
) as total
from occupations
group by occupation
order by total asc;