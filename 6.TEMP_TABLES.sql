/*select * into #temp1
from [dbo].Employees
*/
/* 
  TEMPORARY TABLES IN SQL SERVER

  TYPES:

  1. Local Temporary Table (#tableName)
     - Created using a single #
     - Visible only in the current session or query window
     - Automatically deleted when the session ends

     Example:
     CREATE TABLE #temp1 (id INT, name VARCHAR(50));

  2. Global Temporary Table (##tableName)
     - Created using double ##
     - Visible to all sessions
     - Deleted only when the last session using it is closed

     Example:
     CREATE TABLE ##temp1 (id INT, name VARCHAR(50));

  3. SELECT INTO Syntax for Creating Temp Table
     SELECT * INTO #temp1 FROM Employees;

  NOTES:

  - Temporary tables are stored in the system database tempdb.
  - Useful for storing intermediate results or staging data.

  DIFFERENCE FROM NORMAL TABLES:

  - Temporary tables are short-lived; normal tables are permanent.
  - Normal tables are created in a user-defined database, temp tables in tempdb.
  - Temp tables are automatically dropped (based on session or connection), 
    whereas normal tables persist until explicitly dropped.
*/

select * from #temp1


select * into ##temp2
from [dbo].Employees