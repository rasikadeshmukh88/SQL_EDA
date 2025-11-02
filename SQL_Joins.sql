use sakila;
select * from customer;
select * from payment;

# INNER JOIN --Show customers who have made payments:---Result: Only customers with matching payments.
SELECT c.customer_id, c.first_name, c.last_name, p.payment_id, p.amount, p.payment_date
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id;

# LEFT JOIN --Show all customers, including those who have not made payments (payments info will be NULL):

SELECT c.customer_id, c.first_name, c.last_name, p.payment_id, p.amount, p.payment_date
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id;

#  Right join
SELECT c.customer_id,c.first_name, c.last_name, p.payment_id, p.amount, p.payment_date
FROM customer c
RIGHT JOIN payment p ON c.customer_id = p.customer_id;

# cross join
SELECT c.customer_id, c.first_name, p.payment_id, p.amount
FROM customer c
CROSS JOIN payment p;

SELECT c.customer_id, c.first_name,c.last_name,
  COUNT(p.payment_id) AS payment_count,
  SUM(p.amount) AS total_paid
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_paid DESC;

use company;
select * from departments;
select * from employees;

insert into departments (dept_id, dept_name)
values (6, 'Helper');

insert into employees (emp_name, email, age, dept_id, emp_id, emp_salary)
values ("Santosh",'santosh@gmail.com', 56,Null, 108, 860999);

SELECT e.emp_name, d.dept_id, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

# inner join
SELECT e.emp_id, e.emp_name, d.dept_id, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;


#  Right join
SELECT e.emp_id, e.emp_name, d.dept_id, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

# cross join
SELECT e.emp_id, e.emp_name, d.dept_id, d.dept_name
FROM employees e
cross join departments d;