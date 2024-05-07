-- Author: Bintang Fajarianto
-- Date: May 7 2024

select H.hacker_id, H.name, count(C.challenge_id) as total
from hackers as H join challenges as C
    on H.hacker_id = C.hacker_id
group by H.hacker_id, H.name
having total = (
    select count(C1.challenge_id) as c_max
    from challenges as C1
    group by C1.hacker_id
    order by c_max desc
    limit 1
) or total in (
    select distinct c_compare
    from (
        select H2.hacker_id, H2.name, count(C2.challenge_id) as c_compare
        from hackers as H2 join challenges as C2
            on H2.hacker_id = C2.hacker_id
        group by H2.hacker_id, H2.name
    ) as counts
    group by c_compare
    having count(c_compare) = 1
)
order by total desc, H.hacker_id asc;