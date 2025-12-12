-- all the colums will be seen in the output
select * from Employees
-- only specific cloumns
select FirtsName,LastName from Employees
-- append the names
select EmployeeId , concat (FirtsName, ' ', LastName) from Employees
-- give a name to this columns --> USE (AS) / []
select EmployeeId , concat (FirtsName, ' ', LastName) [GIVE COLUMN NAME] from Employees
