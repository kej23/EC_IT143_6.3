--ALTER TABLE dbo.t_w3_schools_customers DISABLE TRIGGER  trg_AfterUpdate_LastModified;
CREATE TRIGGER trg_AfterUpdate_Last_Modified          --Trigger Name: trg_AfterUpdate_LastModified 
ON dbo.t_w3_schools_customers                            
AFTER UPDATE                                         --Ensures it runs after any update operation.
AS

/*****************************************************************************************************************
NAME:    trg_AfterUpdate_LastModified
PURPOSE: dbo.t_w3_schools_customers Last modified by trigger.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/15/2025   ELVIS KIRUNDA       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This keeps track of the last modified date for each row in the table.
 
******************************************************************************************************************/

--  Creating a trigger



BEGIN
    SET NOCOUNT ON;                     --NOCOUNT ON prevents unnecessary messages from appearing.

    UPDATE dbo.t_w3_schools_customers    --Sets LastModified to the current timestamp for all updated rows (GETDATE()).
    SET LastModified = GETDATE()
    WHERE CustomerID IN (SELECT DISTINCT CustomerID FROM inserted);   --INSERTED table stores modified records, allowing us to target only updated rows.
END;

--SELECT GETDATE() AS my_date;