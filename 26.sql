SELECT Artist.Name AS 'Artist',
  COUNT(InvoiceLine.Quantity) AS 'Times Purchased'
FROM Artist
JOIN Album ON Artist.ArtistId == Album.ArtistId
JOIN Track ON Album.AlbumId == Track.AlbumId
JOIN InvoiceLine ON Track.TrackId == InvoiceLine.TrackId
GROUP BY Artist.Name
ORDER BY "Times Purchased" DESC
LIMIT 3;