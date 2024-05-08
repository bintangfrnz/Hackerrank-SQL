-- Author: Bintang Fajarianto
-- Date: May 8 2024

select submission_date, (
    select count(distinct hacker_id)  
    from submissions as S2
    where S2.submission_date = S1.submission_date
        and (
            select count(distinct S3.submission_date) 
            from submissions as S3
            where S3.hacker_id = S2.hacker_id
                and S3.submission_date < S1.submission_date
        ) = datediff(S1.submission_date , "2016-03-01")
    ), (
        select hacker_id
        from submissions as S2
        where S2.submission_date = S1.submission_date
        group by hacker_id
        order by count(submission_id) DESC, HACKER_ID LIMIT 1
    ) as temp_hacker_id, (
        select name
        from hackers
        where hacker_id = temp_hacker_id
    )
from (select distinct submission_date from submissions) as S1
group by submission_date;