

--How to extract first name from Contact name?
--Contact Name = Alfreds Futterkiste
-- First Name = Futterkiste
--https://learn.microsoft.com/en-us/sql/t-sql/queries/with-common-table-expression-transact-sql?view=sql-server-ver16

WITH CTE_Validation AS (                   --CTE (CTE_Validation): Runs your function dbo.GetFirstName(ContactName) against all records.
    SELECT CustomerID, ContactName, 
           dbo.GetFirstName(ContactName) AS ExtractedFirstName
    FROM dbo.t_w3_schools_customers
)                            --If the function correctly extracts names, there should be NO records where ExtractedFirstName is an empty string ('').
SELECT * 
FROM CTE_Validation 
WHERE ExtractedFirstName = ''  -- If function fails, it returns empty values.