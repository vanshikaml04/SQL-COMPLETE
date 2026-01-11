/*
    ================================================
    RIGHT JOIN in SQL - Complete Explanation
    ================================================

    1️⃣ WHAT IS A RIGHT JOIN?
    -----------------------------------------------
    A RIGHT JOIN (also called RIGHT OUTER JOIN) is a type of JOIN
    operation in SQL that combines rows from two tables.

    It returns:
      - ALL rows from the RIGHT table (the table written after JOIN)
      - MATCHING rows from the LEFT table (the table written first)
      - If there is no matching row in the LEFT table, the columns
        from the LEFT table are returned as NULL.

    So, RIGHT JOIN ensures that no rows from the RIGHT table are lost,
    even if there is no related row in the LEFT table.

    ================================================

    2️⃣ BASIC SYNTAX:
    -----------------------------------------------
    SELECT columns
    FROM left_table
    RIGHT JOIN right_table
      ON left_table.common_column = right_table.common_column;

    The 'ON' clause defines the condition that matches rows
    between the LEFT and RIGHT tables.

    ================================================

    3️⃣ WHY USE RIGHT JOIN?
    -----------------------------------------------
    - To get all data from the RIGHT table and enrich it with
      related data from the LEFT table if available.
    - To find rows in the RIGHT table that have no match in
      the LEFT table (useful for identifying 'unmatched' or 'orphan' data).
    - Similar to LEFT JOIN, but the focus is on preserving the RIGHT table.

    ================================================

    4️⃣ EXAMPLE SCENARIO:
    -----------------------------------------------
    Tables:
      - 'Employees' (LEFT table)
      - 'Departments' (RIGHT table)

    Goal:
      - List all departments and the employees assigned to them.
      - If a department has no employees, show NULL for employee details.

    Example Query:
      SELECT Employees.EmployeeID, Employees.Name, Departments.DepartmentName
      FROM Employees
      RIGHT JOIN Departments
        ON Employees.DepartmentID = Departments.DepartmentID;

    Result:
      - All departments are listed.
      - Departments with no employees will have NULL in employee columns.

    ================================================

    5️⃣ DIFFERENCE: RIGHT JOIN vs LEFT JOIN
    -----------------------------------------------
    - LEFT JOIN keeps ALL rows from the LEFT table.
    - RIGHT JOIN keeps ALL rows from the RIGHT table.

    Both are mirror images:
      - You can rewrite a RIGHT JOIN as a LEFT JOIN by swapping the tables.

    Example:
      SELECT ...
      FROM A RIGHT JOIN B ON ...
      is equivalent to:
      SELECT ...
      FROM B LEFT JOIN A ON ...

    ================================================

    6️⃣ FILTERING RIGHT JOIN RESULTS:
    -----------------------------------------------
    To find rows in the RIGHT table that do NOT have a match
    in the LEFT table, use 'WHERE left_table.column IS NULL'.

    Example:
      -- Find departments that have NO employees assigned
      SELECT Departments.DepartmentID, Departments.DepartmentName
      FROM Employees
      RIGHT JOIN Departments
        ON Employees.DepartmentID = Departments.DepartmentID
      WHERE Employees.EmployeeID IS NULL;

    ================================================

    7️⃣ RIGHT OUTER JOIN vs RIGHT JOIN
    -----------------------------------------------
    'RIGHT JOIN' and 'RIGHT OUTER JOIN' mean the SAME thing.
    'OUTER' is optional and is just for clarity.

    ================================================

    8️⃣ PERFORMANCE CONSIDERATION:
    -----------------------------------------------
    RIGHT JOINs, like LEFT JOINs, may need more resources
    than INNER JOINs because they include unmatched rows and NULLs.
    Ensure the join columns are indexed for better performance.

    ================================================

    ✅ SUMMARY:
    -----------------------------------------------
    - RIGHT JOIN combines data from two tables.
    - Keeps all rows from the RIGHT table.
    - Adds matched rows from the LEFT table.
    - Fills unmatched LEFT table columns with NULL.
    - Useful for preserving RIGHT table data and finding orphans.

    ================================================
*/
