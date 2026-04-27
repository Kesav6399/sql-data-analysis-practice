-- SQL Aggregation Practice Queries

-- 1. Count total employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 2. Average salary by department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- 3. Maximum salary by department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 4. Minimum salary by department
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;

-- 5. Departments with average salary above 50000
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
