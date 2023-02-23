create function getNthHighestSalary(N int) returns int
begin
declare x int;
set x = N-1;
  return (
      select salary
      from employee
      group by salary
      order by salary desc
      limit x, 1
  );
END
