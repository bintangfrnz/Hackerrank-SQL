-- Author: Bintang Fajarianto
-- Date: May 7 2024

select H.hacker_id, H.name, sum(max_score.score) as total_score
from hackers as H join (
    select max(S.score) as score, S.hacker_id
    from submissions as S
    group by S.challenge_id, S.hacker_id
    having score > 1
) as max_score
    on H.hacker_id = max_score.hacker_id
group by H.hacker_id, H.name
order by total_score desc, H.hacker_id asc;