
--How to extract last name from Contact name?
--Contact Name = Maria Anders
-- Last Name = Anders
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT CustomerID, ContactName, 
       CASE 
           WHEN CHARINDEX(' ', ContactName) > 0                --CASE WHEN CHARINDEX(...) > 0: Ensures CHARINDEX returns a valid position before using it in RIGHT.         
           THEN RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName))     ----CHARINDEX(' ', ContactName): Finds the first space in ContactName                                                     
           ELSE '' -- Handle cases where no space is found
       END AS LastName                                          --ELSE '': Returns an empty string if no space is found, preventing errors.
FROM dbo.t_w3_schools_customers;