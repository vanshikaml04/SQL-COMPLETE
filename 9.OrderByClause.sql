/* 
  ORDER BY CLAUSE IN SQL SERVER

  - The ORDER BY clause is used to sort the result set of a query.
  - It can sort by one or more columns, in ascending (ASC) or descending (DESC) order.
  - by defalut ascending
*/

-- FROM --> WHERE --> GROUP BY--> HAVING--> SELECT --> ORDER BY --> TOP (used inside SELECT)
/*
  Example (correct order):

  SELECT TOP 5 Department, COUNT(*) AS Total
  FROM Employees
  WHERE Salary > 50000
  GROUP BY Department
  HAVING COUNT(*) > 2
  ORDER BY Total DESC;
  */
select * from [dbo].[EmployeeRecords]
order by Salary

select * from [dbo].[EmployeeRecords]
order by Salary desc

select * from [dbo].[EmployeeRecords]
where salary > 75000.00
order by salary desc

/* 
  QUERY: Sort Employees by Department (A–Z) and Salary (High to Low)

  Description:
  - This query fetches all records from the EmployeeRecords table.
  - It applies multi-level sorting using ORDER BY:
  
    1. First, it arranges all rows by Department in ascending order (A to Z).
    2. Within each department, it arranges employees by Salary in descending order 
       (highest salary to lowest)
	   */
select * from [dbo].[EmployeeRecords]
order by department asc,salary desc