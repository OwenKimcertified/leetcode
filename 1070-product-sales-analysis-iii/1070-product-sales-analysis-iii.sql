# Write your MySQL query statement below

# select 
# sub_table.product_id, 
# sub_table.first_year,
# sub_table.quantity,
# sub_table.price

# from (select s.*,
#       min(s.year) as first_year
#       from sales as s
#       left join product as p on s.product_id = p.product_id
#       group by s.product_id) as sub_table
      
      
select
sub_table.product_id, 
sub_table.year as first_year ,
sub_table.quantity,
sub_table.price

from (select 
      s.*,
      rank() over(partition by s.product_id order by s.year asc) as rnk
      from sales as s
      left join product as p on s.product_id = p.product_id) as sub_table
     
where sub_table.rnk = 1