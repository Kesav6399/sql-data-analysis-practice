-- Case Study: Employee Data Analysis

-- Business Scenario:
-- Company wants to analyze employee data for decision making

-- 1. Department-wise employee count
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- 2. Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 3. Highest salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 4. Employees earning above average salary
SELECT employee_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 5. Top 5 highest paid employees
SELECT employee_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 6. Employees count by city
SELECT city, COUNT(*) AS total
FROM employees
GROUP BY city;

-- 7. Department with highest average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;

-- 8. Employees who joined recently (example condition)
SELECT employee_name, joining_date
FROM employees
WHERE joining_date >= '2023-01-01';

-- 9. Salary distribution analysis
SELECT 
    CASE 
        WHEN salary < 30000 THEN 'Low'
        WHEN salary BETWEEN 30000 AND 70000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category,
    COUNT(*) AS total
FROM employees
GROUP BY salary_category;

-- 10. Department with more than 5 employees
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
