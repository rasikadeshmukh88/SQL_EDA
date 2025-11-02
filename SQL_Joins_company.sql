use company;
select * from departments;
select * from employees;

insert into departments (dept_id,dept_name)
values(6,'Helper');

insert into employees (emp_name,email,age,dept_id,emp_id,emp_salary)
values("Santosh","santosh@gmail.com",56,NULL,108,860999);

# left join

select e.emp_name,d.dept_id,d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id=d.dept_id;

#inner join 
select e.emp_id,e.emp_name,d.dept_id,d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id=d.dept_id;

#right join

select e.emp_id,e.emp_name,d.dept_id,d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id=d.dept_id;

#Cross join

select e.emp_id,e.emp_name,d.dept_id,d.dept_name
FROM employees e
CROSS JOIN departments d;