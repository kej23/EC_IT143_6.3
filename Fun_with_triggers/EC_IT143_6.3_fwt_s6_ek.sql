
CREATE TRIGGER trg_LastModified_By
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
--How do you set the “last modified by” to “server user”?
--Works for server user and the initial INSERT

ALTER TABLE dbo.t_w3_schools_customers 
ADD LastModifiedBy NVARCHAR(100);

BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.t_w3_schools_customers
    SET LastModifiedBy = SUSER_NAME()  -- Retrieves the current SQL Server user
    WHERE CustomerID IN (SELECT DISTINCT CustomerID FROM inserted);
END;

UPDATE dbo.t_w3_schools_customers 
SET ContactName = 'Updated Name'
WHERE CustomerID = 1;

SELECT CustomerID, ContactName, LastModifiedBy FROM dbo.t_w3_schools_customers WHERE CustomerID = 1;