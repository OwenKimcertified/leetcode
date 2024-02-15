select 
visited_on,
amount,
round(amount / 7, 2) as average_amount

from
(select
 distinct visited_on,
 sum(amount) over (order by visited_on range between interval 6 day preceding and current row) as amount,
 min(visited_on) over() as start_date
 
 from Customer) as sub_query

where visited_on >= start_date + 6;
