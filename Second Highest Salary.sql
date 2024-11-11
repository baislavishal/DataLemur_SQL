#Second Highest Salary - FAANG

SELECT MAX(salary)
FROM employee
WHERE salary<(SELECT MAX(salary) FROM employee);SELECT MAX(salary)
FROM employee
WHERE salary<(SELECT MAX(salary) FROM employee);