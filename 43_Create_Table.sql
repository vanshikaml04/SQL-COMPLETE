-- create tables in sql
create database NEWSTUDENT
create table student_details(
	Student_Name nvarchar(256),
	Student_Gender char(1),
	Age tinyint,
	event_date date,
	distance decimal(5,2)
)

--drop table student_details

select * from student_details


-- inserting data into table

insert into student_details (
	Student_Name,
	Student_Gender,
	Age,
	event_date,
	distance
)

values ('1','M',25,'2024-08-03',0.98),
('1','M',25,'2024-08-03',0.98)

-- to get info about table structure because at times you might not
--know about it and will also give you other info like is null numeric scale datetime precision datatype
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'


-- you can skip adding im all the columns -- left will be plcaed with NULL
insert into student_details (
	Student_Name,
	Student_Gender
)
values ('1','M'),
('1','M')