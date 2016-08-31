SELECT Customer.FirstName || " " || Customer.LastName AS 'Customer Name', Country, InvoiceID, InvoiceDate, BillingCountry 
FROM Invoice JOIN Customer ON Customer.CustomerId == Invoice.CustomerID 
WHERE Customer.Country IS 'Brazil';