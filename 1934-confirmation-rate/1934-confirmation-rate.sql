# Write your MySQL query statement below
# caution! else 0 시 카운트 됨을 유념. 더하기의 개념이 아님. 

# select 
# s.user_id,
# round(sum(case when c.action = 'confirmed' then 1 else 0 end) / count(*), 2) as confirmation_rate 

# from confirmations as c
# right join signups as s on c.user_id = s.user_id 

# group by c.user_id

select s.user_id,
round(sum(case when action='confirmed' then 1 else 0 end)/count(*) ,2) as confirmation_rate
from signups s
left join Confirmations c on s.user_id = c.user_id
group by s.user_id