-- Author: Bintang Fajarianto
-- Date: May 7 2024

select W.id, WP.age, W.coins_needed, W.power
from wands as W join wands_property as WP
    on W.code = WP.code
where WP.is_evil = 0
    and W.coins_needed = (select min(W1.coins_needed)
        from wands as W1 join wands_property as WP1
            on W1.code = WP1.code
        where WP.age = WP1.age and W.power = W1.power)
order by W.power desc, WP.age desc;