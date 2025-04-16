--How to extract first name from Contact name?
--Contact Name = Maria Anders
-- First Name = Maria
--Google and Stack Overflow are your friends. Perform searches on narrow and specific questions.
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT CustomerID, ContactName, 
       LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName    --LEFT(ContactName, ...) extracts everything up to (but not including) the first space, effectively retrieving the first name.
	                                                                             --CHARINDEX(' ', ContactName + ' ') finds the position of the first space in ContactName. The extra space added ensures that names with no space (single-word names) are handled correctly.
FROM dbo.t_w3_schools_customers;