/* where clause
- The WHERE clause is used to filter records based on a condition.
 - Only rows that meet the condition are returned or affected.
 */

 select * from [dbo].[EmployeeRecords]
 where salary > 60000.00

 select * from [dbo].[EmployeeRecords]
 where employeeid=2

 select distinct FirstName,LastName,department,salary from [dbo].[EmployeeRecords]
 where salary>70000