/*
    ===========================================================
    FULL OUTER JOIN in SQL - Complete Explanation
    ===========================================================

    1️⃣ WHAT IS A FULL OUTER JOIN?
    -----------------------------------------------------------
    A FULL OUTER JOIN is a type of JOIN in SQL that combines
    the results of both LEFT JOIN and RIGHT JOIN.

    It returns:
      - ALL rows from the LEFT table.
      - ALL rows from the RIGHT table.
      - If a row has a match in the other table, it combines the data.
      - If a row does NOT have a match, the missing side’s columns
        are filled with NULLs.

    In short, it preserves every row from both tables,
    whether they have a match or not.

    ===========================================================

    2️⃣ WHEN TO USE FULL OUTER JOIN?
    -----------------------------------------------------------
    - When you need a complete view of two tables,
      including matched and unmatched rows on BOTH sides.
    - Useful for merging datasets where you want to keep
      everything, even if there is no relationship.
    - Often used in reporting and data reconciliation tasks
      where you want to see mismatches clearly.

    ===========================================================

    3️⃣ HOW IT COMPARES TO OTHER JOINS
    -----------------------------------------------------------
    - INNER JOIN:
        * Returns ONLY rows that have matches in BOTH tables.
    - LEFT JOIN:
        * Returns ALL rows from LEFT table + matches from RIGHT table.
    - RIGHT JOIN:
        * Returns ALL rows from RIGHT table + matches from LEFT table.
    - FULL OUTER JOIN:
        * Returns ALL rows from BOTH tables.
        * NULLs fill in where no match exists.

    So, FULL OUTER JOIN = LEFT JOIN + RIGHT JOIN combined.

    ===========================================================

    4️⃣ HOW IT HANDLES UNMATCHED ROWS
    -----------------------------------------------------------
    - For rows in the LEFT table with no match:
        * The RIGHT table’s columns are NULL.
    - For rows in the RIGHT table with no match:
        * The LEFT table’s columns are NULL.
    - For rows that match:
        * Data is combined from both tables normally.

    ===========================================================

    5️⃣ ALTERNATIVE NAMES
    -----------------------------------------------------------
    - FULL OUTER JOIN can be written as just FULL JOIN.
    - The keyword OUTER is optional in standard SQL.

    Example: FULL JOIN ≡ FULL OUTER JOIN.

    ===========================================================

    6️⃣ PERFORMANCE CONSIDERATIONS
    -----------------------------------------------------------
    - FULL OUTER JOIN can be more resource-intensive than INNER,
      LEFT, or RIGHT JOINs because it has to scan both tables
      and combine unmatched rows too.
    - Good indexing on the join keys improves performance.

    ===========================================================

    ✅ SUMMARY
    -----------------------------------------------------------
    - FULL OUTER JOIN keeps everything from BOTH tables.
    - Combines rows where there is a match.
    - Fills unmatched parts with NULLs.
    - Useful for complete datasets, reconciliation, and comparing
      what matches and what doesn’t.
    - Think of it as LEFT JOIN + RIGHT JOIN together.

    ===========================================================
*/
  

