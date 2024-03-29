# Write your MySQL query statement below
# caution! else 0 시 카운트 됨을 유념. 더하기의 개념이 아님. 

select 
s.user_id,
round(count(case when c.action = 'confirmed' then 1 else null end) / count(s.user_id), 2) as confirmation_rate 

from signups as s
left join confirmations as c on c.user_id = s.user_id 

group by s.user_id

