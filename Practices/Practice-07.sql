drop table Employee

create Table  Employee 
(
employee_id int primary key,
firstname varchar(20),
lastname varchar(20),
city char(15),
state   char(15)
)

select * from payments

INSERT INTO employee values (10330,'John','John','NY','NY');
insert into employee values (10449,'Sarah','Lebat','Melbourne','Bourke');
insert into employee values (11012,'Jon','Dallas','NY','NY');
insert into employee values (11013,'Gheorghe','Honey','NY','NY');
insert into employee values (11014,'Anton','Savar','NY','NY');

select * from employee
select * from payments

delete from payments
drop table payments

create table payments 
(
employee_id int ,
salary_date char(10),
month_id int,
valuef int,
constraint  f_k5 foreign key(employee_id) references Employee(employee_id) 
);

insert into payments values (10330,'June',6,128);
insert into payments values (10330,'July',7,158);
insert into payments values (10330,'August',8,133);
insert into payments values (10330,'September',9,120);
insert into payments values (10330,'October',10,188);
insert into payments values (10330,'November',11,160);
insert into payments values (10330,'December',12,105);
insert into payments values (10449,'September',9,150);
insert into payments values (10449,'October',10,158);
insert into payments values (10449,'November',11,160);
insert into payments values (10449,'December',12,180);

--1.  Write the SQL queries to display the total amount earned by each employee's name and surname. 

Select firstname, lastname, 
(Select sum(valuef) from payments where employee.employee_id = payments.employee_id) 
From employee;


Select a.firstname, a.lastname, e.valuef
From employee a Inner Join payments e on a.employee_id = e.employee_id 

Select 
		employee.firstname, 
		sum(payments.valuef)
From payments
Inner Join employee on employee.employee_id = payments.employee_id
Group by employee.firstname;


Select a.firstname ||' '|| a.lastname as name, sum(e.valuef) 
From payments e Inner Join employee a on a.employee_id = e.employee_id 
Group by name

--2.  Display all employees that have their names starting with the J letter.

Select firstname, lastname from employee where firstname Ilike 'j%'



