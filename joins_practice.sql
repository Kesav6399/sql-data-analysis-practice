-- SQL Joins Practice Queries

-- Sample tables:
-- employees(employee_id, employee_name, department_id, salary, city)
-- departments(department_id, department_name)

-- 1. Inner join employees with departments
SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

-- 2. Left join to show all employees
SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id;

-- 3. Employees from IT department
SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
WHERE d.department_name = 'IT';
