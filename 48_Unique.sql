-- UNIQUE CONSTRAINT
-- ensures that the column consist of unique values


-- CASE 1 -- NO TABLE - CREATE ONE

create table unique_table(
	id int unique,
	age tinyint not null,
	firstname varchar(256)
	)

select * from unique_table

insert into  unique_table 
values (1,2,'name2'),(3,4,'name2') -- rerun and you wil get no uniwure error


-- CASE 2 -- table exist

alter table unique_table
add unique (firstname) 