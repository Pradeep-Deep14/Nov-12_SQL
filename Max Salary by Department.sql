CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (employee_id, employee_name, salary, department_id) VALUES
(1, 'Ravi', 60000, 1),
(2, 'Aisha', 50000, 1),
(3, 'Rajesh', 80000, 2),
(4, 'Sita', 70000, 2),
(5, 'Vikram', 55000, 1);

SELECT * FROM EMPLOYEES


/*
Write a SQL query to get the employee with the highest salary in each department.
*/

--APPROACH 1
	
WITH CTE AS (
    SELECT 
        employee_name,
        department_id,
        salary,
        DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
    FROM employees
)
SELECT 
    employee_name,
    department_id,
    salary
FROM 
    CTE
WHERE 
    rnk = 1;


--APPROACH 2

SELECT 
    e.employee_name,
    e.department_id,
    e.salary
FROM 
    employees e
JOIN 
    (SELECT 
         department_id,
         MAX(salary) AS max_salary
     FROM 
         employees
     GROUP BY 
         department_id) sub
ON 
    e.department_id = sub.department_id AND e.salary = sub.max_salary;
