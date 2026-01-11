-- PK CONSTRAINT

create table pk_table(
	id int primary key,
	age tinyint
)

insert into pk_table
values(1,4)
insert into pk_table
values(1,3) -- not uniques -- violation of pk

select * from pk_table