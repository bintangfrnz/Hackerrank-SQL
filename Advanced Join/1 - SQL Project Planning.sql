-- Author: Bintang Fajarianto
-- Date: May 8 2024

select SP.start_date, min(EP.end_date)
from (
    select start_date from projects where start_date not in (select end_date from projects)
) as SP, (
    select end_date from projects where end_date not in (select start_date from projects)
) as EP
where SP.start_date < EP.end_date
group by SP.start_date
order by datediff(min(EP.end_date), SP.start_date) asc, SP.start_date asc;