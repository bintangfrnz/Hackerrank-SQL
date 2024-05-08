-- Author: Bintang Fajarianto
-- Date: May 8 2024

with cte as (
    select x, y, row_number() over (order by x) as rn
    from functions
)
select distinct f1.X, f1.Y
from cte as F1 join cte as F2 on F1.x = F2.y and F1.y = F2.x
where F1.x <= F1.y and F1.rn != F2.rn
order by F1.x;