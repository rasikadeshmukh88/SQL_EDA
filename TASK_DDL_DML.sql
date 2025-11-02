CREATE DATABASE Student_info;
use Student_info;

#Table Creation

/* Q1: Write an SQL command to create a table students with the following columns:
student_id (INTEGER, primary key), name (VARCHAR), age (INTEGER), grade (VARCHAR), email (VARCHAR). */

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
grade VARCHAR(10),
email VARCHAR(30)
);

/*Q2: Create a table courses with columns:
course_id (INTEGER, primary key), course_name (VARCHAR), instructor (VARCHAR).*/

CREATE TABLE courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(30),
instructor VARCHAR(30)
);

# Alter Table

/*Q3: Write a query to add a new column gender (VARCHAR) to the students table.*/
ALTER TABLE students ADD COLUMN gender VARCHAR(10);

#Add Constraints

/*Q4: Add a UNIQUE constraint to the email column in the students table.*/
ALTER TABLE students add constraint unique_email UNIQUE(email);

/*Q5: Add a FOREIGN KEY in a new table enrollments(student_id, course_id) 
linking to students(student_id) and courses(course_id).*/

CREATE TABLE enrollments(
student_id INT,
course_id INT,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

#Insert Records
/*Q6: Insert 5 different student records into the students table.*/
SELECT * FROM students;

INSERT INTO students(student_id,name,age,grade,email,gender)
VALUES
(1,'Rasika',22,'A','rasikadeshmukh@gmail.com','Female'),
(2,'Sakshi',22,'B','sakshighadge@gmail.com','Female'),
(3,'Pranali',22,'B','pranalibhor@gmail.com','Female'),
(4,'Shruti',22,'C','shrutisonawane@gmail.com','Female'),
(5,'Payal',22,'A','payalphadtare@gmail.com','Female');

#Q7: Insert 3 courses into the courses table.
SELECT * FROM courses;

INSERT INTO courses (course_id, course_name, instructor)
VALUES 
(1, 'Software Devlopment', 'Prof.Sharma'),
(2, 'Data Science', 'Prof.Mehta'),
(3, 'Web Development', 'Prof.Desai');

#Update Records
#Q8: Update the grade of the student whose student_id is 2 to 'A'.
UPDATE students SET grade='A' WHERE student_id=2;
SELECT * FROM students;

#Delete Records
#Q9: Delete the record of the student whose student_id is 4.
DELETE FROM students WHERE student_id=4;
SELECT * FROM students;

#Select Queries
#Q10: Write a query to select all columns from the students table.
SELECT * FROM students;

#Q11: Select only the names of students who have a grade 'A'.
SELECT name FROM students WHERE grade='A';

#Q12: List the names of students who are older than 20.
SELECT name FROM students where age>20;
