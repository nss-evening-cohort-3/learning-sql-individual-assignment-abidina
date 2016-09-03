SELECT Track.*,
  COUNT(InvoiceLine.Quantity) AS 'Times Purchased', Invoice.InvoiceDate
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId == Track.TrackId
JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId
GROUP BY Track.Name
ORDER BY "Times Purchased" DESC
LIMIT 5;

SELECT Track.TrackId AS 'Track ID', Track.Name AS 'Title', Track.AlbumId AS 'Album ID',
  COUNT(InvoiceLine.Quantity) AS 'Times Purchased', Invoice.InvoiceDate AS 'Invoice Date'
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId == Track.TrackId
JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId
GROUP BY Track.Name
ORDER BY "Times Purchased" DESC
LIMIT 5;