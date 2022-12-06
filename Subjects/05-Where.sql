-- DQL -- WHERE USE


CREATE TABLE employees
(
	id char(3) PRIMARY KEY,
	name varchar(30) NOT NULL,
	salary int,
	date date 	
)

INSERT INTO employees VALUES('001', 'Osman Dogan', 3000, '2018-04-05');
INSERT INTO employees VALUES('002', 'Arif Kara', 4500, '2017-11-05');
INSERT INTO employees VALUES('003', 'Veli Han', 8500, '2019-11-05');
INSERT INTO employees VALUES('004', 'Mustafa Ali', 5500, '2020-11-05');

SELECT name FROM employees -- Query a specific column
SELECT * FROM employees WHERE id = '004'; -- Query a specific row
SELECT * FROM employees WHERE salary > 5000;
SELECT * FROM employees WHERE date > '2019-10-01';


