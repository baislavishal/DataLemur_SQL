#Well Paid Employees - FAANG

SELECT e1.employee_id,e1.name
    FROM employee e1
    LEFT JOIN employee e2
    ON e2.employee_id=e1.manager_id
    WHERE e1.manager_id IS NOT NULL
    AND e1.salary>e2.salary