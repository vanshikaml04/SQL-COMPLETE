/*
    ===========================================================
    LEFT ANTI JOIN & RIGHT ANTI JOIN in SQL - Complete Explanation
    ===========================================================

    1️⃣ WHAT IS AN ANTI JOIN?
    -----------------------------------------------------------
    An ANTI JOIN is not an explicit SQL keyword in standard SQL,
    but it describes a common pattern in relational databases.

    It means:
      - Returning rows from one table that do NOT have a match
        in another table based on a given condition.

    An ANTI JOIN filters out rows that have matches and keeps
    only those with NO match.

    ===========================================================

    2️⃣ LEFT ANTI JOIN
    -----------------------------------------------------------
    - A LEFT ANTI JOIN returns all rows from the LEFT table
      that do NOT have any matching rows in the RIGHT table.

    - Standard SQL does not have a direct `LEFT ANTI JOIN`
      keyword. Instead, this logic is implemented using a LEFT JOIN
      combined with a WHERE filter that checks for NULLs in the
      RIGHT table’s columns.

    - The key idea is:
      * Perform a LEFT JOIN to connect the two tables.
      * Rows with no match in the RIGHT table will have NULLs.
      * Filter for only those NULL rows to get the anti join result.

    - Commonly used to:
      * Find rows in a main table that have no related records.
      * Identify ‘orphans’ or missing relationships.

    ===========================================================

    3️⃣ RIGHT ANTI JOIN
    -----------------------------------------------------------
    - A RIGHT ANTI JOIN is the opposite: it returns all rows
      from the RIGHT table that do NOT have any matching rows
      in the LEFT table.

    - Like LEFT ANTI JOIN, there is no explicit keyword in
      standard SQL for RIGHT ANTI JOIN.

    - The logic is:
      * Perform a RIGHT JOIN.
      * Rows in the RIGHT table with no match in the LEFT table
        will have NULLs in the LEFT table’s columns.
      * Filter for NULLs to keep only unmatched RIGHT table rows.

    - Common use cases:
      * Find items in a secondary table that have no links in the primary table.
      * Check for unassigned or orphan records in the RIGHT table.

    ===========================================================

    4️⃣ WHY USE ANTI JOINS?
    -----------------------------------------------------------
    - Anti joins are important for identifying missing or orphaned data.
    - Common in data validation and cleaning tasks.
    - Helpful for reports where you need to know what’s missing,
      incomplete, or not linked.

    ===========================================================

    5️⃣ ANTI JOIN vs NOT EXISTS
    -----------------------------------------------------------
    - ANTI JOIN can be written with JOINs + NULL checks.
    - Another common pattern is `NOT EXISTS` or `NOT IN`.

    - Both approaches mean the same thing:
      * Keep only rows that do not have a related row.
    - Some databases optimize `NOT EXISTS` better than anti joins,
      especially with correlated subqueries.

    ===========================================================

    ✅ SUMMARY
    -----------------------------------------------------------
    - LEFT ANTI JOIN: Rows in LEFT table without a match in RIGHT table.
    - RIGHT ANTI JOIN: Rows in RIGHT table without a match in LEFT table.
    - No direct SQL keyword — implemented with JOIN + NULL filter.
    - Useful for finding missing or orphaned data.
    - Alternative: Use NOT EXISTS or NOT IN.

    ===========================================================
*/
