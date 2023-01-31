# Write your MySQL query statement below
select w1.id
from weather as w1, weather as w2
where to_days(w1.recorddate) - to_days(w2.recorddate) = 1
and w1.temperature > w2.temperature;