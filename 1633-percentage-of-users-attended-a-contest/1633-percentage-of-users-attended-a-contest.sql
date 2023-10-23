select contest_id, 
       round(count(user_id)*100/(select count(distinct user_id) from users), 2) as percentage
from register as r  
group by contest_id
order by percentage desc, contest_id;
