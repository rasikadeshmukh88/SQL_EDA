use company;
select * from employees;
alter table employees add column emp_salary decimal(10, 3);
SET SQL_SAFE_UPDATES = 0;
update employees set emp_salary = 480000 where emp_id = 101;
update employees set emp_salary = 500000 where emp_id = 102;
update employees set emp_salary = 2000000 where emp_id = 103;
update employees set emp_salary = 46800.780 where emp_id = 104;
update employees set emp_salary = 638000.930 where emp_id = 105;
update employees set emp_salary = 740000 where emp_id = 106;

select * from employees;
# Aggregate Functions

# Count() --- Returns the number of rows that match a condition.
SELECT COUNT(*) AS total_employees FROM employees; # Counts all rows in the employees table.

# Returns the total sum of a numeric column.
SELECT SUM(emp_salary) AS total_salary FROM employees; #Sums all values in the salary column.

# Returns the average value of a numeric column.
SELECT AVG(emp_salary) AS average_salary FROM employees; #Calculates the average salary of all employees.

# Returns the smallest value in a column.
SELECT MIN(emp_salary) AS lowest_salary FROM employees; # Finds the minimum salary.

SELECT emp_name, emp_salary
FROM employees
WHERE emp_salary = (SELECT MIN(emp_salary) FROM employees);


# Returns the largest value in a column.
SELECT MAX(emp_salary) AS highest_salary FROM employees; # Finds the maximum salary.

SELECT emp_name, emp_salary
FROM employees
WHERE emp_salary = (SELECT MAX(emp_salary) FROM employees);


# use of Count, Sum, Avg, Min, Max
SELECT 
    COUNT(*) AS total_employees,
    SUM(emp_salary) AS total_salary,
    AVG(emp_salary) AS average_salary,
    MIN(emp_salary) AS min_salary,
    MAX(emp_salary) AS max_salary
FROM employees;

# Group By Clause
SELECT dept_id, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY dept_id;

# order by clause
SELECT emp_name, emp_salary
FROM employees
ORDER BY emp_salary desc;

# having clause
SELECT emp_id, AVG(emp_salary) AS average_salary
FROM employees
GROUP BY emp_id
HAVING AVG(emp_salary) > 300000;

select * from employees;

SELECT SUM(emp_salary) AS total_salary
FROM employees
HAVING total_salary > 4300000;
/* Without GROUP BY, the result of an aggregate is one row only, 
so you'll never see multiple rows unless you group by some column. */




select * from employees;
commit;
set SQL_SAFE_UPDATES = 0;
update employees set dept_id = 6 where emp_name = "Santosh";

rollback;
select * from employees;
update employees set emp_id = 7 where emp_name = "Santosh";
select * from employees;
rollback;

-- alter table employees drop column phoneno;
-- update employees set emp_name = 'Shankey' where emp_id = 103;
