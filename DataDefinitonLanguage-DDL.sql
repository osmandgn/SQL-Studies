
-- CREATING NEW DATABASE
CREATE DATABASE SQLLessons 

-- CREATING NEW TABLE 
CREATE TABLE students
(
	student_id char(4),
	student_name varchar(20),
	grade_average real, -- Used for decimal numbers 
	registration_date date
);

-- CREATE A NEW TABLE FROM AN EXISTING TABLE

CREATE TABLE new_students
AS 
SELECT student_id, student_name, registration_date FROM students;

-- QUERYING CREATED TABLES

SELECT * FROM students
SELECT * FROM new_students

-- * ASTERISK IS MEAN 'ALL'
