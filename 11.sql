SELECT InvoiceLineId, COUNT(*) AS 'Number of Line Items' 
FROM InvoiceLine 
GROUP BY InvoiceId;