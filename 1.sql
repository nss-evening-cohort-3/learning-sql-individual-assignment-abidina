SELECT FirstName AS 'First Name', LastName AS 'Last Name', CustomerId, Country 
FROM (SELECT * FROM Customer) 
WHERE Country!='USA';