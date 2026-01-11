-- 🔀 UNION and UNION ALL are used to combine the result sets of two or more SELECT statements.
-- ✅ Rules for using UNION / UNION ALL:
-- 1. Number of columns must be the same in all SELECT queries.
-- 2. The data types of corresponding columns must be compatible or the same.
-- 3. The order of columns in each SELECT query must be the same.

-- 🔎 UNION:
-- - Removes duplicate rows from the final result.
-- - Performs sorting internally to eliminate duplicates (which may slow performance).
-- - Example usage:

SELECT * FROM append1
UNION
SELECT * FROM append2;

-- 🔎 UNION ALL:
-- - Includes all rows from both SELECT queries, including duplicates.
-- - Faster than UNION since it does not sort or remove duplicates.
-- - Example usage:

SELECT * FROM append1
UNION ALL
SELECT * FROM append2;

-- 📌 Use UNION when you need distinct records only.
-- 📌 Use UNION ALL when you want everything including duplicates (for performance or full visibility).


select * from append1

select * from append2

-- combines all
select c1,c2,c3 from append1
union all
select c1,c2,c3 from append2

-- only unique unions
select c1,c2,c3 from append1
union 
select c1,c2,c3 from append2

