--Check Constraint
--It checks for certain condition that can be applied on the columns of a table, if this condition is not
--fulfilled, we will not be able to insert the records into the table


-- CASE -1 --> NO TABLE -- CREATE ONE

create table check_table(
	id int,
	age tinyint check(age>=10)
)	

insert into check_table 
values (1,10),(2,9)

-- CASE -2 --> TABLE EXIST
alter table check_table
ADD CONSTRAINT chk_age CHECK (age >= 18);