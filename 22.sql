SELECT  Employee.FirstName || ' ' || Employee.LastName AS "Sales Agent",
COUNT(CustomerId) AS "Number of Customers"
FROM Customer
JOIN Employee ON Customer.SupportRepID = Employee.EmployeeId
GROUP BY "Sales Agent";