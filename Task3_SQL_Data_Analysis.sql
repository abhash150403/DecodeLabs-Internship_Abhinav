-- DecodeLabs Project 3: SQL Data Analysis

USE data_analysis_project;

SELECT *
FROM employees;

-- 1. Find employees from Delhi

SELECT *
FROM employees
WHERE City = 'Delhi';

-- 2. Find employees with salary above 35000

SELECT *
FROM employees
WHERE Salary > 35000;

-- 3. Sort employees by salary from lowest to highest

SELECT *
FROM employees
ORDER BY Salary ASC;

-- 4. Count total number of employees

SELECT COUNT(*) AS Total_Employees
FROM employees;

-- 5. Count employees by city

SELECT City, COUNT(*) AS Total_Employees
FROM employees
GROUP BY City;

-- 6. Calculate total salary of all employees

SELECT SUM(Salary) AS Total_Salary
FROM employees;

-- 7. Calculate average salary

SELECT AVG(Salary) AS Average_Salary
FROM employees;

-- 8. Calculate average salary by city

SELECT City, AVG(Salary) AS Average_Salary
FROM employees
GROUP BY City;

-- 9. Calculate total salary by city

SELECT City, SUM(Salary) AS Total_Salary
FROM employees
GROUP BY City;

-- 10. Find cities with average salary above 32000

SELECT City, AVG(Salary) AS Average_Salary
FROM employees
GROUP BY City
HAVING AVG(Salary) > 32000;

-- 11. Find the highest-paid employees

SELECT *
FROM employees
ORDER BY Salary DESC;


-- ============================================
-- PROJECT INSIGHTS
-- ============================================

-- 1. The dataset contains 50 employees.
-- 2. Delhi has the highest number of employees (21).
-- 3. Noida has the highest average salary (₹33,411.76).
-- 4. The total salary of all employees is ₹16,13,000.
-- 5. The overall average salary is ₹32,260.
-- 6. Noida is the only city with an average salary above ₹32,000.
-- 7. Employees earning above ₹35,000 were identified using WHERE.
-- 8. Highest-paid employees were identified using ORDER BY DESC.