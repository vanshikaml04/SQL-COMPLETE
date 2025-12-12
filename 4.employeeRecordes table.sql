-- SELECT DISTINCT

select * from employeerecords

-- distinct firstname
select distinct FirstName from employeerecords
-- distinct salary
select distinct salary from employeerecords
-- distnct complete name
select distinct concat(FirstName, ' ',lastName) from employeerecords
select distinct firstName, lastname from employeerecords

-- select distcinct record
select distinct * from employeerecords