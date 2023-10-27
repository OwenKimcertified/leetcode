# Write your MySQL query statement below
select e1.name
from employee as e1
left join employee as e2 on e2.managerId = e1.id
group by e2.managerId
having count(e2.managerId) >= 5

