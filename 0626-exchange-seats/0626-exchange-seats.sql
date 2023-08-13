# Write your MySQL query statement below

select case 
            when ID % 2 != 0 then lead(ID, 1, ID) over (order by ID asc)
            when ID % 2 = 0 then ID - 1
        end as ID, STUDENT
from SEAT
order by ID