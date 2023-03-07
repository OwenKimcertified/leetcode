select sell_date,
       count(distinct(product), sell_date) as num_sold, 
       group_concat(distinct product order by product) as products
from Activities
group by sell_date