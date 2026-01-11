-- DEFAULT CONSTRINAT

-- PRIMARY KEY (PK)
-- A Primary Key is a column (or combination of columns) that uniquely identifies each row in a table.
-- Rules:
-- 1. Cannot have NULL values.
-- 2. Must be unique for each row.
-- 3. A table can have only ONE Primary Key (but it can consist of multiple columns - called composite PK).

-- Example:
-- create table students (
--     student_id int PRIMARY KEY,  -- student_id is the Primary Key
--     name varchar(100)
-- );

-- FOREIGN KEY (FK)
-- A Foreign Key is a column (or combination of columns) that creates a relationship between two tables.
-- It refers to the Primary Key in another table.
-- Rules:
-- 1. Ensures referential integrity – i.e., the foreign key value must exist in the parent table.
-- 2. Can have duplicate values.
-- 3. Can have NULL values (unless specified otherwise).
-- 4. Used to connect child table to parent table.

-- Example:
-- create table enrollments (
--     enrollment_id int PRIMARY KEY,
--     student_id int,  -- This references the students table
--     course_name varchar(100),
--     FOREIGN KEY (student_id) REFERENCES students(student_id)
-- );
