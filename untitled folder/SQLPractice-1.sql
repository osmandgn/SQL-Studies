CREATE TABLE employee(
	EmployeeID char(5),
	FirstName varchar(25),
	LastnName varchar(25),
	City char(2),
	State char(2)
	
)

INSERT INTO employee VALUES ('10330', 'John','John','NY', 'NY');
INSERT INTO employee VALUES ('10310', 'Sarah','Keram','NY', 'NY');


SELECT * FROM employee

--Ismi J ile başlayan çalışanları listeleyin. 

SELECT * FROM employee WHERE FirstName LIKE 'J%';

CREATE TABLE Payments (
	EmployeeID char(5),
	SalaryDate varchar(25),
	MonthID char(2),
	Value$ int 
  
)

INSERT INTO Payments VALUES ('10330', 'June', '6', 128);
INSERT INTO Payments VALUES ('10330', 'June', '6', 100);
INSERT INTO Payments VALUES ('10330', 'June', '6', 30);
INSERT INTO Payments VALUES ('10310', 'June', '6', 300);

SELECT * FROM Payments

-- Çalışanların isimlerini, soy isimlerini ve çalıştıkları süre boyunca 
-- aldıkları toplam maaşı listeleyen bir sorgu yazın. 

SELECT FirstName, LastnName, (SELECT SUM(Value$) FROM Payments WHERE employee.EmployeeID = Payments.EmployeeID) FROM employee;