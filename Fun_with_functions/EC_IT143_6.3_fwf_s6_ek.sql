
--How to extract first name from Contact name?
--Contact Name = Alfreds Futterkiste
-- First Name = Futterkiste
--https://stackoverflow.com/questions/11017678/sql-server-compare-results-of-two-queries-that-should-be-identical

--SELECT CustomerID, ContactName, 
--       LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName
--FROM dbo.t_w3_schools_customers;

--SELECT CustomerID, ContactName, dbo.GetFirstName (ContactName) AS FirstName
--FROM dbo.t_w3_schools_customers;

SELECT CustomerID, ContactName, 
       LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS AdHocFirstName,
       dbo.GetFirstName (ContactName) AS UDFFirstName
FROM dbo.t_w3_schools_customers;

--If both methods correctly extract the first name, the values in AdHocFirstName and UDFFirstName should match.
