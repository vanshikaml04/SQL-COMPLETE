-- COPYING DATA FROM ONE TABLE TO ANOTHER

-- CASE 1 --> NEW TABLE SIMPLY DOES NOT EXIST
-- CASE 2 --> NEW TABLE STRUCTURE EXIST

-- CASE1 
select * from dbo.Sales

-- This statement will result in the creation of New_Table_1 
--which will be having structure & records both same as that of dbo.sales table
select * into NEW_TABLE_1 from dbo.sales

-- copy selected columns
select productid,quantity into new_table_2 from dbo.sales

select * from new_table_2


-- CASE 2
select top 0 * into new_table_3 from  dbo.Sales

select * from new_table_3

insert into new_table_3 select * from dbo.sales