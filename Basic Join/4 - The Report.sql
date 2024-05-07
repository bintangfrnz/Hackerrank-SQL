-- Author: Bintang Fajarianto
-- Date: May 7 2024

select case 
    when G.grade > 7 then S.name
    else NULL
end as names, G.grade, S.marks
from students as S join grades as G
    on S.marks between G.min_mark AND G.max_mark
order by G.grade desc, names ASC, S.marks ASC;