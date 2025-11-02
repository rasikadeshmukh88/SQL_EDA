use company;
grant select on employees to apoorva;
grant select, update on employees to apoorva;
revoke update on employees from apoorva;


grant select, update on employees to newuser;
revoke update on employees from newuser;



select * from employees;
commit;


insert into employees(emp_name,email,age,dept_id,emp_id,emp_salary) values('Rudra', 'rudra@gmail.com', 22,10,110,1000000);
set sql_safe_updates = 0;
update employees Set age = 30 where emp_id = 104;
select * from employees;
select emp_name as name, emp_id as id from employees;
grant select, update on employees to newuser;
revoke update on employees from newuser;
rollback; # will revert the state where commit executed  # need to keep auto transaction commit off



select * from employees;
commit;
SET SQL_SAFE_UPDATES = 0;
update employees set emp_name = 'Shankey' where emp_id = 103;
select * from employees;
