SELECT Track.Name AS 'Title', Artist.Name AS 'Artist Name', Album.Title AS 'Album Name',
  COUNT(InvoiceLine.Quantity) AS 'Times Purchased'
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId == Track.TrackId
JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId
JOIN Album ON Album.AlbumId == Track.AlbumId
JOIN Artist ON Artist.ArtistId == Album.ArtistId
GROUP BY Track.Name
ORDER BY "Times Purchased" DESC
LIMIT 5;