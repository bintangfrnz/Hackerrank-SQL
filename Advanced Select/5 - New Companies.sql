-- Author: Bintang Fajarianto
-- Date: May 8 2024

select C.company_code,
    C.founder,
    count(distinct LM.lead_manager_code),
    count(distinct SM.senior_manager_code),
    count(distinct M.manager_code),
    count(distinct E.employee_code)
from company as C,
    lead_manager as LM,
    senior_manager as SM,
    manager as M,
    employee as E
where C.company_code = LM.company_code
    and LM.lead_manager_code = SM.lead_manager_code
    and SM.senior_manager_code = M.senior_manager_code
    and M.manager_code = E.manager_code
group by C.company_code, C.founder
order by C.company_code asc;