-- update
-- UPDATE: SQL command to modify existing data in a table
-- SET: Specifies the column(s) you want to change, with the new value
-- WHERE: Filters the rows that should be updated
--  Without WHERE, all rows will be updated!

-- ⚠️ WARNING: Avoid running UPDATE without WHERE unless you want to affect the entire table.
-- Always use WHERE to limit the impact.


select * from [dbo].[EmployeeRecords]

select * into #1 from [dbo].[EmployeeRecords]

select * from #1

update #1 
set Department='hr'
where Department is null

select * from #1

insert into #1 
(EmployeeID)
values (10);

-- formultiple colum values upadate use ,
update #1
set Firstname = 'update' , lastname ='query'
where FirstName is null and LastName is null

-- upate complet row
update #1
set Department='hi'

