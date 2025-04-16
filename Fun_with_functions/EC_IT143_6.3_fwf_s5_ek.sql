GO
CREATE FUNCTION dbo.GetFirstName (@ContactName NVARCHAR(255))
RETURNS NVARCHAR(255)
AS

/*****************************************************************************************************************
NAME:    GetFirstName
PURPOSE:  Getting first name from the combined name.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/14/2025   Elvis Kirunda       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
Adapted from; 
https://learn.microsoft.com/en-us/sql/t-sql/statements/create-function-transact-sql?view=sql-server-ver16
 
******************************************************************************************************************/

BEGIN
    DECLARE @FirstName NVARCHAR(255);
    SET @FirstName = LEFT(@ContactName, CHARINDEX(' ', @ContactName + ' ') - 1);    --Uses CHARINDEX(' ', @ContactName + ' ') to locate the first space.
                                                                                    --Uses LEFT(@ContactName, ...) to extract the first name.
	RETURN @FirstName;
END;
GO
--SELECT GETDATE() AS my_date;