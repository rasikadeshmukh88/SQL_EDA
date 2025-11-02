# https://dev.mysql.com/doc/refman/8.4/en/data-types.html
-- https://www.w3schools.com/mysql/mysql_datatypes.asp
/*     */
# DDL AND DML COMMANDS

-- create a new database
create database Company;

# use the new database 
use Company;

# create the structure of the table Departments using create command
create table Departments(
dept_id int Primary	key,
dept_name varchar(100)
);

# create the structure of the table Employees using create command
create table Employees(
emp_name varchar(100) not null,
email varchar(100) unique,
age int,
dept_id int,
constraint foreign_dept_id foreign key(dept_id) references Departments (dept_id) # foreign constraint
);

# display the tables present in the database using show command
show tables;
select * from Departments;

# insert data into Departments table using insert into command
insert into Departments (dept_id, dept_name)
values(1, 'HR'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Medical'),
(5, 'Marketing');


show tables;
select * from departments;
select * from employees;

# insert data into employees table using insert into command
insert into employees(emp_name, email, age, dept_id)
values('Rajeev', 'rajeev@gmail.com', 23, 3),
('Vishwas', 'vishwas@yahoo.com', 29, 1),
('Shankey', 'shankey128@gmail.com', 22, 1),
('Dhruv', 'dhruve@gmail.com', 33, 2),
('Roopali','roopali23@gmail.com', 26, 5),
('Namrata', 'nam@gmail.com', 28, 4);

select * from employees;
# update employees table
update employees set emp_name = 'Alicia' where dept_id = 3;

update employees set emp_name = 'Rajeev' where dept_id = 3; # revert the change

# use of select command to view the table
select * from employees;

# Add new column emp_id in employees table
alter table employees add column emp_id int;


select * from employees;

# update employees table as well as use where clause
update employees set emp_id = 101 where email = 'rajeev@gmail.com';
update employees set emp_id = 102 where email = 'vishwas@yahoo.com';
update employees set emp_id = 103 where email = 'shankey128@gmail.com';
update employees set emp_id = 104 where email = 'dhruve@gmail.com';
update employees set emp_id = 105 where email = 'roopali23@gmail.com';
update employees set emp_id = 106 where email = 'nam@gmail.com';


select * from employees;

# use of AND query
SELECT * FROM employees
WHERE dept_id = 3 AND emp_name = 'Rajeev';

# ue of or command
SELECT * FROM employees
WHERE emp_id = 103 OR emp_name = 'Bob';

SELECT * FROM employees
WHERE emp_id = 103 OR emp_name = 'Shankey';

# use of not
SELECT * FROM employees
WHERE NOT dept_id = 2;

# combine all and, or and not
SELECT * FROM employees
WHERE (dept_id = 1 OR dept_id = 2) AND NOT emp_name = 'Bob';

# merge --- in mysql--- "insert into ------ on duplicate key update" is used in place of merge
INSERT INTO employees (emp_id, emp_name, email, dept_id, age)
VALUES (102, 'Vishwas', 'vishwas@yahoo.com', 1, 29)
ON DUPLICATE KEY UPDATE
    emp_name = VALUES(emp_name),
    email = VALUES(email),
    dept_id = VALUES(dept_id),
    age = values(age);


select * from employees;


# delete any record from a table by using delete command
delete from employees where email = 'robert@example.com';

select * from employees;