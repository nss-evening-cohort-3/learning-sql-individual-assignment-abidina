SELECT Employee.FirstName || " " || Employee.LastName AS 'Full Name', Invoice.InvoiceId 
FROM Employee, Invoice 
WHERE Employee.Title == 'Sales Support Agent';
