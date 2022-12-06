-- DML - DATA MANUPULATION LANG.
-- INSERT (Adding data to database)

INSERT INTO students VALUES ('1234', 'John', 85.5, '07-01-2021');
INSERT INTO students VALUES ('4567', 'Tom', 65, now());

-- IF WE WANT TO ADD PARTIAL DATA TO A TABLE

INSERT INTO students (student_id, student_name) VALUES ('2337', 'Mary');
INSERT INTO students (student_name, grade_average, registration_date) VALUES ('Angel', 45.0, '2019-08-05');

SELECT * FROM students


