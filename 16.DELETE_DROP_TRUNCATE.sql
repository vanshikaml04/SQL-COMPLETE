-- DELETE: removes rows/data from a table based on a condition.
-- Example: DELETE FROM Employees WHERE Department = 'Sales';
-- Does NOT remove the table itself.
-- Can delete all rows too: DELETE FROM Employees;
-- Slower for big data because it logs each deleted row.
-- Can be rolled back if inside a transaction.

-- TRUNCATE: removes ALL rows from a table, no condition.
-- Example: TRUNCATE TABLE Employees;
-- Keeps the table structure & columns.
-- Faster than DELETE for all rows, uses less log.
-- Cannot delete specific rows, only all.
-- Usually cannot be rolled back in some DBMS.

-- DROP: removes the entire table from the database.
-- Example: DROP TABLE Employees;
-- Deletes data + table structure + all definitions.
-- Cannot be rolled back (mostly).
-- After DROP, the table does not exist anymore.

-- WHEN TO USE:
-- Use DELETE when you need to remove specific rows.
-- Use TRUNCATE when you want to quickly empty the table but keep it.
-- Use DROP when you no longer need the table at all.


select * from [dbo].[EmployeeRecords]

select * into #3 from [dbo].[EmployeeRecords]

select * from #3

delete from #3 -->delete complete data

select * into #4 from [dbo].[EmployeeRecords]

delete from #4
where Department='HR' or Department='Fianance'


select * from #4
truncate table #4