SELECT Track.Name AS 'Title', Album.Title AS 'Album Name',
  COUNT(InvoiceLine.Quantity) AS 'Times Purchased'
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId == Track.TrackId
JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId
JOIN Album ON Album.AlbumId == Track.AlbumId
GROUP BY Track.Name
ORDER BY "Times Purchased" DESC
LIMIT 5;