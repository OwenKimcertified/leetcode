# Write your MySQL query statement below
select distinct c.customer_id
from Customer as c
left join Product as p on c.product_key = p.product_key
group by c.customer_id
having (select count(*) from Product) = count(distinct p.product_key)
