SELECT Employee.FirstName || ' ' || Employee.LastName AS "Sales Agent", 
  MAX(Invoice.InvoiceId) AS "Yearly Sales" FROM Employee 
Join Customer ON Customer.SupportRepId == Employee.EmployeeId 
Join Invoice ON Invoice.CustomerId;
/* this isn't correct, whether it's min or max or whichever year it shows up as Jane Peacock' */


/* the following works, but doesn't use MAX */
SELECT Employee.FirstName || " " || Employee.LastName AS "Sales Agent",
  (SELECT ROUND(SUM(Invoice.Total), 2)) AS "Total Sales"
FROM Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY "Sales Agent"
ORDER BY Invoice.Total DESC
LIMIT 1