# Write your MySQL query statement below
update salary
set 
sex = if (sex = 'm', 'f', 'm');
            # m then f else m