/*
    ================================================
    LEFT JOIN in SQL - Complete Explanation
    ================================================

    1️⃣ WHAT IS A LEFT JOIN?
    -----------------------------------------------
    A LEFT JOIN (also called LEFT OUTER JOIN) is a type of JOIN
    operation in SQL that combines rows from two tables.

    It returns:
      - ALL rows from the LEFT table (the table written first)
      - MATCHING rows from the RIGHT table (the table joined)
      - If there is no matching row in the RIGHT table, the columns
        from the RIGHT table are returned as NULL.

    So, LEFT JOIN ensures that no rows from the LEFT table are lost,
    even if there is no related row in the RIGHT table.

    ================================================

    2️⃣ BASIC SYNTAX:
    -----------------------------------------------
    SELECT columns
    FROM left_table
    LEFT JOIN right_table
      ON left_table.common_column = right_table.common_column;

    The 'ON' clause defines the condition that matches rows
    between the LEFT and RIGHT tables.

    ================================================

    3️⃣ WHY USE LEFT JOIN?
    -----------------------------------------------
    - To get all data from the main table and enrich it with
      related data if available.
    - To find rows in the LEFT table that have no match
      in the RIGHT table (useful for finding 'missing' relations).
    - For reporting, when you want complete data from one side
      but also related details if they exist.

    ================================================

    4️⃣ EXAMPLE SCENARIO:
    -----------------------------------------------
    Tables:
      - 'Customers' (LEFT table)
      - 'Orders' (RIGHT table)

    Goal:
      - List all customers and any orders they have placed.
      - If a customer has no orders, show NULL for order details.

    Example Query:
      SELECT Customers.CustomerID, Customers.Name, Orders.OrderID
      FROM Customers
      LEFT JOIN Orders
        ON Customers.CustomerID = Orders.CustomerID;

    Result:
      - All customers are listed.
      - Customers without orders will have NULL in OrderID.

    ================================================

    5️⃣ DIFFERENCE: LEFT JOIN vs INNER JOIN
    -----------------------------------------------
    - INNER JOIN returns ONLY rows that have matching data
      in both tables.
    - LEFT JOIN returns ALL rows from the LEFT table plus
      matching rows from the RIGHT table (NULL if none).

    Example:
      If there are 5 customers and only 3 have orders:
        - INNER JOIN returns 3 rows.
        - LEFT JOIN returns 5 rows.

    ================================================

    6️⃣ FILTERING LEFT JOIN RESULTS:
    -----------------------------------------------
    Often, you want to find rows with NO match.
    Use 'WHERE right_table.column IS NULL'.

    Example:
      -- Find customers who have NEVER placed an order
      SELECT Customers.CustomerID, Customers.Name
      FROM Customers
      LEFT JOIN Orders
        ON Customers.CustomerID = Orders.CustomerID
      WHERE Orders.OrderID IS NULL;

    ================================================

    7️⃣ LEFT OUTER JOIN vs LEFT JOIN
    -----------------------------------------------
    'LEFT JOIN' and 'LEFT OUTER JOIN' mean the SAME thing.
    'OUTER' is optional and mostly used for clarity.

    ================================================

    8️⃣ PERFORMANCE CONSIDERATION:
    -----------------------------------------------
    LEFT JOINs can be more costly than INNER JOINs because they
    preserve unmatched rows and handle NULLs.
    Proper indexing on join columns improves performance.

    ================================================

    ✅ SUMMARY:
    -----------------------------------------------
    - LEFT JOIN combines data from two tables.
    - Keeps all rows from the LEFT table.
    - Adds matched rows from the RIGHT table.
    - Fills unmatched RIGHT table columns with NULL.
    - Useful for optional relationships and missing data checks.

    ================================================
*/
