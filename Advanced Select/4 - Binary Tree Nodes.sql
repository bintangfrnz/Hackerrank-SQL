-- Author: Bintang Fajarianto
-- Date: May 8 2024

select bst.n, case
    when bst.p is null then 'Root'
    when exists (
        select b.p FROM bst as b where b.p = bst.n
    ) then 'Inner'        
    else 'Leaf'
end as node_type
from bst
order by bst.n;