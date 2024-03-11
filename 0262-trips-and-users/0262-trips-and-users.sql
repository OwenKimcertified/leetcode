# Write your MySQL query statement below
# select 
# t.request_at as 'Day',
# round(sum(t.status != 'completed')/ count(*), 2) as 'Cancellation Rate'
# from trips as t
# left join users as u on t.client_id = u.users_id and u.banned = 'No'
# where t.request_at between '2013-10-01' and '2013-10-03'
# group by Day


select request_at as Day,
round(sum(t.status != 'completed') / count(*), 2) as "Cancellation Rate"
from trips t
left join users as clients on t.client_id = clients.users_id 
left join users as driver on  t.driver_id = driver.users_id
where driver.banned = 'No'
and clients.banned = 'No'
and Request_at between '2013-10-01' and '2013-10-03'
group by Day