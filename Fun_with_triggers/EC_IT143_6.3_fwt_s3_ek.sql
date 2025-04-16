--Q1: How to keep track of when a record was last modified.
--A1: This works for the initial INSERT...
--https://stackoverflow.com/questions/6344413/sql-server-row-date-last-modified

--ALTER TABLE dbo.t_w3_schools_customers 
--ADD LastModified DATETIME DEFAULT GETDATE();

SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 't_w3_schools_customers';

