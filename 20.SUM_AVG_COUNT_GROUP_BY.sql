-- SUM: adds up all numeric values in a column.
-- Example: SELECT SUM(Salary) FROM Employees;
-- Total salary of all employees.
-- Ignores NULL values.
-- Often used with GROUP BY for totals per group.
-- Example: SELECT Department, SUM(Salary) FROM Employees GROUP BY Department;

-- AVG: calculates the average (mean) of numeric values.
-- Example: SELECT AVG(Salary) FROM Employees;
-- Gives average salary of all employees.
-- Ignores NULL values.
-- Often used with GROUP BY to find average per group.
-- Example: SELECT Department, AVG(Salary) FROM Employees GROUP BY Department;

-- COUNT: counts number of rows.
-- Example: SELECT COUNT(*) FROM Employees;
-- Total number of rows in the table.
-- COUNT(column) counts non-NULL values only.
-- Example: SELECT COUNT(Salary) FROM Employees; -- counts only rows where Salary is NOT NULL.
-- Often used with GROUP BY to count rows per group.
-- Example: SELECT Department, COUNT(*) FROM Employees GROUP BY Department;

-- GROUP BY: groups rows with same values into summary rows.
-- Use with SUM, AVG, COUNT, MIN, MAX.
-- Example: SELECT Department, COUNT(*) FROM Employees GROUP BY Department;
-- Groups by Department and counts employees in each.
-- Every non-aggregate column in SELECT must be in GROUP BY.


select sum(quantity) [sum_quant] from [dbo].[sales] 

select sum(totalamount) [sumamount], sum(quantity) [sum_quant] from [dbo].[sales]

select avg(totalamount) [avg_amount], avg(quantity) [avg_quant] from [dbo].[sales]

select productId, sum(totalamount) [sumamount], sum(quantity) [sum_quant],avg(totalamount) [avg_amount], avg(quantity) [avg_quant]  from [dbo].[sales]
group by ProductID

select * from [dbo].[Sales]

select productId,storeId, sum(totalamount) [sumamount], sum(quantity) [sum_quant],avg(totalamount) [avg_amount], avg(quantity) [avg_quant]  from [dbo].[sales]
group by ProductID,storeId

--- count
select count(*) [number of rows] from [dbo].[sales]

select productId,storeId, 
sum(totalamount) [sumamount], sum(quantity) [sum_quant],
avg(totalamount) [avg_amount], avg(quantity) [avg_quant],
count(totalamount) [count_amount], count(quantity) [count_quant]
from [dbo].[sales]
group by ProductID,storeId

select count(paymentmethod) [no of records] from [dbo].[sales]

select paymentmethod,count(PaymentMethod) [distinct products] from [dbo].[sales]
group by PaymentMethod