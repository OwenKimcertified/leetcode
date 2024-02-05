select person_name

from (select
      turn,
      person_name,
      weight,
      sum(weight) over (order by turn) as total_weight
      from Queue
      ) as sub_table

# 1000 이상이면 걸려야 함.
where total_weight <= 1000
order by turn desc
limit 1;

