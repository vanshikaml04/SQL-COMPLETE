-- The `AND` operator means: both conditions on left and right must be TRUE.
-- Example: Department = 'IT' AND Salary > 50000 → Only employees in IT with salary > 50000.

-- The `OR` operator means: if **any one** condition is TRUE, the row will be selected.
-- But when using `AND` and `OR` together, use parentheses () to avoid confusion.


select * from [dbo].[EmployeeRecords]
WHERE LASTNAME='miller' or  lastname='smith'

select * from [dbo].[EmployeeRecords]
where employeeid=1 and firstname='john'

select * from [dbo].[EmployeeRecords]
where (employeeid=1 and firstname='john') or (LASTNAME='miller' or  lastname='smith')