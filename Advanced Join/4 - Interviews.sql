-- Author: Bintang Fajarianto
-- Date: May 8 2024

select con.contest_id,
    con.hacker_id,
    con.name,
    sum(ts) as ts,
    sum(tas) as tas,
    sum(tv) as tv, 
    sum(tuv) as tuv
from contests as con
    left join colleges as col
        on con.contest_id = col.contest_id
    left join challenges as ch
        on col.college_id = ch.college_id 
    left join (
        select challenge_id,
            sum(total_views) as tv, 
            sum(total_unique_views) as tuv
          from view_stats
          group by challenge_id
    ) as views
        on ch.challenge_id = views.challenge_id 
    left join (
        select challenge_id,
            sum(total_submissions) as ts,
            sum(total_accepted_submissions) as tas
        from submission_stats
        group by challenge_id
    ) as submissions
        on ch.challenge_id = submissions.challenge_id
group by con.contest_id, con.hacker_id, con.name
having (ts + tas + tv + tuv) > 0 
order by con.contest_id;