SELECT product_id, 
       COALESCE(
         (SELECT new_price 
          FROM Products p2 
          WHERE p2.product_id = p.product_id 
            AND p2.change_date <= '2019-08-16' 
          ORDER BY p2.change_date DESC 
          LIMIT 1),
         10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p;



# select p1.product_id,
#        case when min(p1.change_date) > '2019-08-16' then 10
#             else (select p2.new_price
#                   from products as p2
#                   where p1.product_id = p2.product_id
#                     and p2.change_date <= '2019-08-16'
#                   order by change_date desc
#                   limit 1)
#             end as price

# from products as p1
# group by p1.product_id

