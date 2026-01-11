--DIFFERNCE BEWTEEN WHERE AND HAVING CLAUSE
-- WHERE: filters rows before any grouping happens.
-- Example: SELECT * FROM Employees WHERE Department = 'Sales';
-- Filters rows where Department is Sales.
-- Works on individual rows only, cannot use aggregate functions.
-- Example: SELECT * FROM Employees WHERE Salary > 50000;
-- can not use aggreagting functions in where

-- HAVING: filters groups after GROUP BY is done.
-- Must be used with GROUP BY or aggregate functions.
-- Example: SELECT Department, COUNT(*) FROM Employees GROUP BY Department HAVING COUNT(*) > 5;
-- WHERE cannot do this because COUNT(*) is an aggregate.
-- can use aggregating functions

-- Both can be used together.
-- Example:
-- SELECT Department, AVG(Salary) 
-- FROM Employees
-- WHERE Salary > 30000 -- filters rows first
-- GROUP BY Department
-- HAVING AVG(Salary) > 50000; -- then filters groups

-- SUMMARY:
-- WHERE = filter rows → GROUP BY = group rows → HAVING = filter groups.


select * from [dbo].[sales]

select StoreID,sum(Quantity) [total quantity],sum(totalamount) [sum_amount] from [dbo].[sales]
where TotalAmount > 100
group by StoreID
having sum(Quantity) > 10
order by [total quantity] desc


select * from [dbo].[sales]
where Quantity>5