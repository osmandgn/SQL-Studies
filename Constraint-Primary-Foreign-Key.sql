---------CONSTRAINT-------
--UNIQUE
--NOT NULL


CREATE TABLE students1
(
	student_id char(4) UNIQUE,
	student_name varchar(20) NOT NULL,
);

INSERT INTO students1 VALUES ('0001', 'Mark'); --NOT NULL & UNIQUE
INSERT INTO students1 (student_id) VALUES ('0001') -- NULL & NON-INIQUE

-- PRIMARY KEY
-- THERE ARE 3 WAYS TO ASSIGN PRIMARY KEY

-- 1. WAY

CREATE TABLE students2
(
	student_id char(4) PRIMARY KEY,
	student_name varchar(20),
	grade_average real
);

-- 2. WAY
CREATE TABLE students2
(
	student_id char(4),
	student_name varchar(20),
	grade_average real,
CONSTRAINT sdt PRIMARY KEY (student_id)
);


-- 3. WAY

CREATE TABLE students2
(
	student_id char(4),
	student_name varchar(20),
	grade_average real,
PRIMARY KEY (student_id)
);

-- FOREIGN KEY
-- 1. WAY
CREATE TABLE lessons
(
	lesson_id char(4),
	lesson_name varchar(20),
	teacher_name varchar(25),
CONSTRAINT lsn FOREIGN KEY (lesson_id) REFERENCES students2(student_id)  
)

--2.WAY
CREATE TABLE lessons
(
	lesson_id char(4),
	lesson_name varchar(20),
	teacher_name varchar(25),
FOREIGN KEY lesson_id REFERENCES student2 (student_id);
)
