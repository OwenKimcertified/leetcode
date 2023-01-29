delete p2
from person as p1
join person as p2 on p1.Email = p2.Email
where p1.id< p2.id;