CREATE TABLE emplooye1(
	Emp_ID char(3),
	first_name varchar(20),
	last_name varchar(20),
	birth_day date,
	Gender char (1),
	salary real,
	Job_ID char(1),
	Manager_ID char(3)
);

INSERT INTO emplooye1 VALUES ('100','Jan', 'Levinson', '1961-05-11', 'F', 110.00, '1');
INSERT INTO emplooye1 VALUES ('101','Michael', 'Scott', '1961-05-11', 'M', 75.00, '2', '100');
INSERT INTO emplooye1 VALUES ('102','Jos', 'Porter', '1961-05-11', 'M', 78.00, '3', '100');
INSERT INTO emplooye1 VALUES ('103','Angela', 'Martin', '1961-05-11', 'F', 63.00, '2', '101');
INSERT INTO emplooye1 VALUES ('104','Andy', 'Bernard', '1961-05-11', 'M', 65.00, '3', '101');

SELECT * FROM emplooye1

CREATE TABLE jop(
	Job_ID char(1),
	Job_Name varchar(20)

)

INSERT INTO JOP VALUES('2', 'SDET');
INSERT INTO JOP VALUES ('3', 'MANUEL TESTER');
INSERT INTO JOP VALUES ('1', 'QA LEAD');


SELECT * FROM JOP

-- 1) Michael Scott’un manager'i kimdir?

SELECT first_name, last_name, 
(SELECT first_name FROM emplooye1 where Emp_ID = 
(SELECT Manager_ID FROM emplooye1 WHERE first_name = 'Michael' AND last_name = 'Scott')
)AS manager FROM emplooye1 WHERE first_name = 'Michael' AND last_name = 'Scott';


-- 2) Angela Martin’in Job_Name’i nedir ?

SELECT first_name, last_name,
(SELECT Job_Name FROM JOP 
 WHERE Job_ID = 
 (SELECT Job_ID 
  FROM emplooye1 WHERE first_name = 'Angela')) FROM emplooye1 WHERE first_name = 'Angela';


-- 3) Manual Tester’larin ortalama Salary’si ne kadardir ?




-- 4) En yuksek Salary’yi alan kisinin Job_Name’i nedir?






