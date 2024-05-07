-- Author: Bintang Fajarianto
-- Date: May 7 2024

select H.hacker_id, H.name
from submissions as S
    join challenges as C
        on S.challenge_id = C.challenge_id
    join difficulty as D
        on C.difficulty_level = D.difficulty_level
    join hackers as H
        on S.hacker_id = H.hacker_id and S.score = D.score
group by H.hacker_id, H.name 
having count(S.hacker_id) > 1 
order by count(S.hacker_id) desc, S.hacker_id asc; 