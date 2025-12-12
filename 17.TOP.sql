-- TOP: limits the number of rows returned by a SELECT query.
-- Example: SELECT TOP 5 * FROM Employees;
-- Returns only the first 5 rows from the result set.
-- Useful for sampling data or testing.
-- Can be used with ORDER BY for specific rows.
-- Example: SELECT TOP 3 * FROM Employees ORDER BY Salary DESC;
-- Returns top 3 highest paid employees.
-- In SQL Server, TOP is used instead of LIMIT (which is used in MySQL).
-- Can use WITH TIES to return extra rows with same value:
-- Example: SELECT TOP 2 WITH TIES * FROM Employees ORDER BY Salary DESC;
-- If 2nd and 3rd have same Salary, both are returned.

select * from [dbo].[EmployeeRecords]

select top 5  with ties * from [dbo].[EmployeeRecords]
order by Salary desc

select top 2 employeeId,salary from [dbo].[EmployeeRecords]

select top 4 salary from [dbo].[EmployeeRecords]