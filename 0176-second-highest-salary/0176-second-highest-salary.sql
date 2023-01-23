select
    max(salary) as secondhighestsalary
from employee
where salary < (
    select max(salary)
    from employee
) 

# max는 값이 없으면 null 을 리턴함.
# 두 번째로 큰 salary 를 찾기 때문에 조건에 맞지 않다 -> 
# 두 번째로 큰 값이 없다 ->
# 1개 혹은 0 개 -> 
# 문제에서 null 로 출력을 요청 !