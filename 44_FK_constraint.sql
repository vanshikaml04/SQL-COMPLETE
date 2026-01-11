
-- FK constarint

create table pk_constraint(
	id int primary key,
	age tinyint
)


insert into pk_constraint
values (1,2) , (3,4)

create table test_fk(
	id2 int foreign key references pk_constraint(id),
	course varchar(256)
)

insert into test_fk
values (1,'a') ,(3,'b'),(null,'c')

insert into test_fk
values(5,'d')

select * from test_fk