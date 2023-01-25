select e1.name as employee
from employee as e1, employee as e2
# have to compare. 
where (e1.managerid = e2.id
        and
        e1.salary > e2.salary);

# when use just [select name as employee] ambigouse error occurs
# because of do not understand which table's name column it is.
