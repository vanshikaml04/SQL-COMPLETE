-- HAVING: used to filter groups after GROUP BY.
-- Similar to WHERE, but WHERE filters rows before grouping, HAVING filters groups after.
-- Example: SELECT Department, COUNT(*) FROM Employees GROUP BY Department HAVING COUNT(*) > 5;
-- Shows only departments with more than 5 employees.
-- Must be used with GROUP BY (or an aggregate function).
-- Example: SELECT Department, AVG(Salary) FROM Employees GROUP BY Department HAVING AVG(Salary) > 50000;
-- Shows only departments where average salary is above 50,000.
-- Can use multiple conditions like WHERE.
-- Example: SELECT Department, COUNT(*) FROM Employees GROUP BY Department HAVING COUNT(*) > 5 AND SUM(Salary) > 200000;


select * from [dbo].[Sales]
-- total sales avg sales total qiuenatity avg qaunstity for each distinct product

select 
productId,
sum(totalamount) [sum_sales],
sum(quantity) [sum_qunatity],
avg(quantity) [avg_quantity],
avg(TotalAmount) [avg_sales]
from [dbo].[Sales]
group by productid
having sum(TotalAmount)<700 and sum(Quantity) = 21
