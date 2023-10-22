# Write your MySQL query statement below
select user_id, max(time_stamp) as last_stamp
from logins
where year(time_stamp) = '2020' 
group by user_id


# Solution code
# SELECT
#     DISTINCT user_id,
#     FIRST_VALUE(time_stamp)OVER(PARTITION BY user_id ORDER BY time_stamp DESC) AS last_stamp
# FROM
#     Logins
# WHERE EXTRACT(Year FROM time_stamp) = 2020;

# FIRST_VALUE(time_stamp)OVER(PARTITION BY user_id ORDER BY time_stamp DESC)
# 이 코드 방식을 메모