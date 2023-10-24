#... 로직을 어떻게 짜야할 지 정리가 안됨

(select u.name as results 
from movierating as m 
left join users as u 
on u.user_id = m.user_id
group by m.user_id
order by count(rating) desc, u.name asc
limit 1)

union all

(select m1.title as results 
from movierating as m 
left join movies as m1
on m.movie_id = m1.movie_id
where m.created_at like '2020-02%'
group by m.movie_id
order by avg(m.rating) desc, m1.title asc
limit 1);