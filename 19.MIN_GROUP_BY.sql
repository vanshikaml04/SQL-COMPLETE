-- MIN: returns the smallest value in a column.
-- For numbers: gives lowest number. Example: SELECT MIN(Salary) FROM Employees;
-- For text: gives first value alphabetically (A-Z). Example: SELECT MIN(Name) FROM Employees;
-- Ignores NULL values.
-- Often used with GROUP BY to find min per group.
-- Example: SELECT Department, MIN(Salary) FROM Employees GROUP BY Department;
-- Gives lowest salary in each Department.

select * from dbo.sales

select min(quantity)[min_quant] from dbo.sales

select saledate, min(quantity) [minquantity] from dbo.sales
group by SaleDate

