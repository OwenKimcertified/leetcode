SELECT Department, Employee, Salary
FROM (
    SELECT d.name AS Department, e.name AS Employee, 
           e.salary AS Salary,
           DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS s_rank
    FROM Employee AS e
    LEFT JOIN Department AS d ON e.departmentID = d.ID
) AS sq
WHERE s_rank <= 3;
