# Write your MySQL query statement below

# select distinct(ConsecutiveNums)

# from (select 
#       id,
#       num as ConsecutiveNums,
#       row_number() over (order by num) as row_num,
#       (id - num + 1) as checker
#       from logs) as sub_table

# where row_num = checker



select distinct num as ConsecutiveNums

from (select num,
      lead(num) over (order by id asc) prev_num,
      lag(num) over (order by id asc) aft_num
      from logs) as sub_table
      
where num = prev_num and num = aft_num
                                        

