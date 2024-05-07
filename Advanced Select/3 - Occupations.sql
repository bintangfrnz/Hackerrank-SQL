-- Author: Bintang Fajarianto
-- Date: May 8 2024

select 
    max(case when occupation = "Doctor" then name end) as Doctor,
    max(case when occupation = "Professor" then name end) as Professor,
    max(case when occupation = "Singer" then name end) as Singer,
    max(case when occupation = "Actor" then name end) as Actor
from (
    select 
        name,
        occupation,
        row_number() over (partition by occupation order by name) as ranking
    from occupations
) as s
group by ranking;