--SELF JOIN: A SELF JOIN is a regular join where a table is joined with itself.
-- ✅ It is used when we want to compare rows within the same table or model relationships 
--    that exist between entries in the same table.

-- 🧠 How it works:
-- - The table is given two different aliases to act like two separate tables.
-- - These aliases help us compare one row with another in the same table.
-- - The JOIN condition is applied between columns of these two aliases.

-- 🔍 Real-world use cases:
-- - Employees and their Managers (both stored in same employee table)
-- - Categories and Subcategories (parent-child relations in the same category table)
-- - Friends or Connections in a social network
-- - Course prerequisites (a course table referring to other courses)

-- ⚠️ JOIN Types and NULL Impact:
-- - Using INNER JOIN: Only returns rows where a match exists (e.g., employees who have a manager)
-- - Using LEFT JOIN: Returns all rows from the left table and NULL where no match is found 
--   (e.g., top-level employees without a manager will show NULL as manager)

-- 📌 NULLs in Self Join:
-- - When a reference column (e.g., manager_id) is NULL, it means no related row exists.
-- - In INNER JOIN, such rows are excluded.
-- - In LEFT JOIN, such rows are included, but the joined columns from the second alias will be NULL.


select a.c1,b.c2 from table1 a inner join table1 b on a.c1 = b.c1

select a.c1,b.c2 from table1 a join table1 b on a.c1 = b.c1