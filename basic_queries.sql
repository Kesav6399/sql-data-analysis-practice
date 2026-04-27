-- Basic SQL Practice Queries

-- 1. View all employees
SELECT * 
FROM employees;

-- 2. Filter employees by department
SELECT employee_id, employee_name, department, salary
FROM employees
WHERE department = 'IT';

-- 3. Filter employees by salary
SELECT employee_id, employee_name, department, salary
FROM employees
WHERE salary > 50000;

-- 4. Sort employees by salary
SELECT employee_id, employee_name, department, salary
FROM employees
ORDER BY salary DESC;

-- 5. Find employees by city
SELECT employee_id, employee_name, city
FROM employees
WHERE city = 'Hyderabad';
