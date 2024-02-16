# table reframe 
# 0 case return => require union **

select 
    categories.category,
    coalesce(count(accounts.account_id), 0) as accounts_count
from 
    (select 'Low Salary' as category
     union all
     select 'Average Salary' as category
     union all
     select 'High Salary' as category) as categories
left join 
    accounts on case 
                    when categories.category = 'Low Salary' then accounts.income < 20000
                    when categories.category = 'Average Salary' then accounts.income between 20000 and 50000
                    when categories.category = 'High Salary' then accounts.income > 50000
                end
group by 
    categories.category;


# select 
# category, 
# coalesce(count(*), 0) as accounts_count

# from 
# (select case 
#             when income < 20000 then "Low Salary"  
#             when income between 20000 and 50000 then "Average Salary" 
#             when income > 50000 then "High Salary" 
#         end as category
            
#  from accounts) as sub_query
 
#  group by category 
 
 
 
