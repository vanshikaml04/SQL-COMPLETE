use employee_details_final;


Create Table Employees(
	EmployeeId INT PRIMARY KEY,
	FirtsName VARCHAR(50),
	LastName VARCHAR(50),
	Department VARCHAR(50),
	Salary DECIMAL(10,2),
	HireData DATE

);

Insert Into Employees(EmployeeId,FirtsName,LastName,Department,Salary,HireData) 
Values 
(1,'John1','Doe1', 'HR',500000.00,'2020-01-15'),
(2,'John2','Doe2', 'Fianance',500000.00,'2020-01-15'),
(3,'John3','Doe3', 'IT',500000.00,'2020-01-15'),
(4,'John4','Doe4', 'Marketing',500000.00,'2020-01-15'),
(5,'John5','Doe5', 'IT',500000.00,'2020-01-15'),
(6,'John6','Doe6', 'Fianance',500000.00,'2020-01-15');
