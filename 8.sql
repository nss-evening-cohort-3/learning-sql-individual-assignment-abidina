SELECT Invoice.Total, Customer.FirstName || ' ' || Customer.LastName AS 'Customer Name', 
  Invoice.BillingCountry AS 'Billing Country', 
  Employee.FirstName || ' ' || Employee.LastName AS 'Sales Agent Name'
FROM Customer 
JOIN Invoice
ON Invoice.InvoiceId==Customer.CustomerId
JOIN Employee
ON Customer.SupportRepId==Employee.EmployeeId;