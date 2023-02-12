# Write your MySQL query statement below
select *
from cinema
where mod(id, 2) !=0 and description != 'boring'
# mod(x,y) = x%y
order by rating desc;