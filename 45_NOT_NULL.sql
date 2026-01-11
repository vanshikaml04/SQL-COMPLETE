-- NOT NULL contraint

-- Constraints
-- Conditions that can be applied on columns of a table & these conditions are to be followed while inserting records into the table

create database constraints

use constraints


-- CASE 1 --> NO TABLE-- CREATE ONE
create table test_notNull(
		id int not null,
		age tinyint,
		firstname varchar(256) not null
)

select * from test_notNull

select * from INFORMATION_SCHEMA.columns
where TABLE_NAME like 'test_not_null';

insert into test_notNull 
values (1,2,'name1'),(2,4,'name2'),(4,3) -- last one will show error error due to null values not allowed

-- CASE -2
-- we have table -- then alter the datatype of columns and then do stuff

alter table test_notNull
alter column firstname varchar(256) null -- can insert null values

insert into test_notNull 
values (1,2,'raj'),(2,4,null),(4,3,null)

select * from test_notNull