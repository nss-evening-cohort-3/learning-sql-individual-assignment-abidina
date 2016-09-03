SELECT InvoiceLineId AS 'Invoice Line ID', Track.Name 
AS 'Track Name' FROM InvoiceLine 
JOIN Track ON Track.TrackId == InvoiceLine.TrackId;