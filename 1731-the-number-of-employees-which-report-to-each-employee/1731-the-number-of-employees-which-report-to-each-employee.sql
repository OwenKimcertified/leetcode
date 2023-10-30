select e1.employee_id, e1.name,
       count(e1.employee_id) reports_count,
       round(avg(e2.age)) as average_age
from employees e2
join employees e1 on e1.employee_id = e2.reports_to
group by e1.employee_id
order by e1.employee_id