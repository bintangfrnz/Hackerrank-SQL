-- Author: Bintang Fajarianto
-- Date: May 8 2024

select S.Name
from students as S
    inner join friends as F
        on S.id = F.id
    inner join packages as P
        on F.id = P.id
    inner join packages as FP
        on F.friend_id = FP.id
where FP.salary > P.salary
order by FP.salary;