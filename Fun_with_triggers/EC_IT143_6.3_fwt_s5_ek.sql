
--Q1: How to keep track of when a record was last modified.
--A1: Let's use an after update trigger....

UPDATE dbo.t_w3_schools_customers
SET ContactName = 'Updated Name'
WHERE CustomerID = 1;

SELECT CustomerID, ContactName, LastModified 
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;

