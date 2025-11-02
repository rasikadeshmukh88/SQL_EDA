# Created database
create database student_details;
show databases;
-- database changed
use student_details;

/* this is multiline comment here we have created the table students */
create table students(
ID int primary key,
name varchar(100),
age int 
);

# use alter command to add columns in an exitinng table
alter table students add column email varchar(100);

# added unique in an existing table 
alter table students add constraint unique_email unique(email);

-- drop unique constraint
alter table students drop constraint unique_email;

# alter table add constraint not null
alter table students modify column  name varchar(100) not null;

# drop constraint
alter table students modify column name varchar(100);

select * from students;
# example of foreign key


CREATE TABLE departments (
    ID INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE students_det (
    student_id INT PRIMARY KEY,                 -- Primary Key
    name VARCHAR(100) NOT NULL,                 -- Not Null
    email VARCHAR(100) UNIQUE,                  -- Unique
    ID INT,                                -- Foreign key
    FOREIGN KEY (ID) REFERENCES departments(ID)
);

CREATE TABLE students_det (
    student_id INT PRIMARY KEY,                 -- Primary Key
    name VARCHAR(100) NOT NULL,                 -- Not Null
    email VARCHAR(100) UNIQUE,                  -- Unique
    ID INT, 									-- Foreign key
    constraint fk_departments_ID
    FOREIGN KEY (ID) REFERENCES departments(ID)
);

truncate table students;
drop table students;
drop table student_dept;





# fetch the foreign key name 
SELECT CONSTRAINT_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'students_det'
  AND COLUMN_NAME = 'ID'
  AND CONSTRAINT_SCHEMA = 'student_details';
 
# drop foreign key constraint
ALTER TABLE students_det
DROP FOREIGN KEY students_det_ibfk_1;

