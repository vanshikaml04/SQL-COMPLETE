-- `NOT IN` is used to filter out multiple unwanted values.
-- The query will return only those employees whose department is NOT in the given list.
-- Equivalent to: Department != 'HR' AND Department != 'Finance'
-- It works for numeric, string, or date types.


-- `BETWEEN` selects values within a given range.
-- Syntax: column BETWEEN lower_bound AND upper_bound
-- It is inclusive: it includes both the lower and upper values.
-- Works with numbers, dates, and even characters (alphabetical range).

select * from [dbo].[EmployeeRecords]
where not EmployeeID =1

select * from [dbo].[EmployeeRecords]
where not EmployeeID =1 and not salary = 600000


select * from [dbo].[EmployeeRecords]
where salary >= 60000.00 and salary<=75000.00
-- this is same as using between
select * from [dbo].[EmployeeRecords]
where salary between 60000.00 and 75000.00

-- not can be used to
select * from [dbo].[EmployeeRecords]
where salary not between 60000.00 and 75000.00

select * from [dbo].[EmployeeRecords]
where not salary  between 60000.00 and 75000.00

-- IN
select * from [dbo].[EmployeeRecords]
where  salary  in(60000.00, 75000.00,85000.00)

select * from [dbo].[EmployeeRecords]
where lastname in ('miller','smith')

select * from [dbo].[EmployeeRecords]
where lastname not in ('miller','smith')