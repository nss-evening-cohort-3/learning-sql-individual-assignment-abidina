SELECT MediaType.Name AS 'Media Type',
  COUNT(InvoiceLine.Quantity) AS 'Times Purchased'
FROM MediaType
JOIN Track ON MediaType.MediaTypeId == Track.MediaTypeId
JOIN InvoiceLine ON Track.TrackId == InvoiceLine.TrackId
GROUP BY MediaType.Name
ORDER BY "Times Purchased" DESC
LIMIT 1;