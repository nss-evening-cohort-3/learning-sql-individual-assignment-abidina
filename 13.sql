SELECT InvoiceLineId AS 'Invoice Line ID', Track.Name AS 'Track Name', Track.Composer
FROM InvoiceLine
JOIN Track ON InvoiceLine.InvoiceLineId == Track.TrackId;