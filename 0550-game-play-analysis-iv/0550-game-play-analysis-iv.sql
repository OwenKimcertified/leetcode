# Write your MySQL query statement below

select
round(count(distinct player_id) / (select count(distinct player_id) from activity), 2) as fraction

from (select 
      player_id, event_date,
      min(event_date) over(partition by player_id order by event_date) as consecutive_logs
      from activity) as sub_table
      
where datediff(event_date, consecutive_logs) = 1
      
      
      
