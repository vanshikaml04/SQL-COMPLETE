-- NULL means "unknown", "missing", or "no value"
-- It is NOT the same as 0, empty string '', or blank space

-- `IS NULL` is used to filter records where a column has no value assigned.
-- You cannot use = NULL → This is incorrect:
--     Salary = NULL  (Wrong)
-- You must always use:
--     Salary IS NULL (Correct)

-- NULL is written without quotes or parentheses.
-- Must match the column's data type and nullability.
-- If the column is defined as NOT NULL, this will throw an error.

-- NULL = NULL is not TRUE
-- In SQL logic:
-- NULL = NULL → UNKNOWN
-- Use IS NULL / IS NOT NULL instead


select * from [dbo].[EmployeeRecords]
where department is null

select * from [dbo].[EmployeeRecords]
where department is not null
