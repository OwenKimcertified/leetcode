# Write your MySQL query statement below
select
id,
visit_date,
people

from (select *,
             rank() over(order by id asc) as icmt,
             (id - rank() over(order by id asc)) as checker
      from stadium
      where people >= 100 
      ) as sub_table

where 
checker in (select is_consecutive
            from (select *,
                  (id - rank() over(order by id asc)) as is_consecutive
                  from stadium
                  where people >= 100) as sub_table2
            group by is_consecutive
            having(count(*)) >= 3)

order by visit_date asc; 