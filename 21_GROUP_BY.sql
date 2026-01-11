-- GROUP BY: used to group rows with same values.
-- Groups data based on one or more columns.
-- Used with aggregate functions like SUM, AVG, COUNT, MIN, MAX.
-- Example: SELECT Department, COUNT(*) FROM Employees GROUP BY Department;
-- Groups employees by Department and counts them.
-- All non-aggregated columns in SELECT must be in GROUP BY.
-- You can GROUP BY multiple columns.
-- Example: SELECT Department, Gender, AVG(Salary) FROM Employees GROUP BY Department, Gender;
-- This groups by Department and Gender, then gives average salary per group.
-- Use HAVING to filter groups (like WHERE but for groups).
-- Example: SELECT Department, COUNT(*) FROM Employees GROUP BY Department HAVING COUNT(*) > 5;
-- Shows only departments with more than 5 employees.


