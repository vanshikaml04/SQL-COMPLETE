--Insert into 
-- INSERT INTO: SQL command used to add new rows to a table.
-- [dbo].[EmployeeRecords]: Fully qualified table name.
-- (col1, col2, ...): List of columns in which we are inserting values (this order must match the VALUES section).
-- VALUES (...): The actual values to be inserted for each column.
-- Note: Data types must match the column definition. For example:
--    'Amit' is a string → goes into a VARCHAR column
--    70000.00 is a float or decimal → goes into a Salary column

--  If you skip columns list, you MUST provide values for all columns in correct order:
-- Example:
-- INSERT INTO EmployeeRecords
-- VALUES (7, 'Amit', 'Sharma', 'IT', 70000.00);
-- This works only if table has 5 columns and you're inserting into ALL.


select * from [dbo].[EmployeeRecords]

insert into [dbo].[EmployeeRecords]
values (7,'insert','into','sql',2700000)--insert record in all the cloumns

insert into [dbo].[EmployeeRecords]
(EmployeeID,firstName,lastname,salary)
values(8,'insert2','into2','00000'); -- null at places where no record is mentioned



