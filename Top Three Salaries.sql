WITH Salary_Rank AS (
  SELECT d.department_name,e.name,e.salary,
    DENSE_RANK() OVER (PARTITION BY d.department_name ORDER BY e.salary DESC) AS Sal_Rank 
  FROM employee e 
  LEFT JOIN department d ON e.department_id=d.department_id
)
SELECT department_name,name,salary 
  FROM Salary_Rank 
  WHERE sal_rank<=3 
  ORDER BY department_name,salary DESC,name
