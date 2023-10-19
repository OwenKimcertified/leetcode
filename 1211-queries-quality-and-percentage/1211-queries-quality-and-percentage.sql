# select  query_name, 
#         round(avg(rating/position), 2) as quality
# ROUND((SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END)/COUNT(rating)*100), 2) AS poor_query_percentage
# from Queries
# group by query_name

# round((sum(case when rating < 3 then 1 else 0 end) /count(query_name))*100,2) as poor_query_percentage 

select
    query_name,
    round(sum(rating*1.0/position)/count(query_name) , 2) as quality,
    round((sum(case when rating < 3 then 1.0 else 0 end)/count(query_name)) * 100 , 2)
        as poor_query_percentage
from Queries
group by query_name