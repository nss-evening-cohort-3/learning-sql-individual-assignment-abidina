SELECT InvoiceId AS 'Invoice ID', 
COUNT (*) AS 'Invoice Line Count' FROM InvoiceLine 
GROUP BY InvoiceId;