SELECT Track.Name AS "Track Name", 
  Album.Title AS "Album Name", 
  MediaType.Name AS "Media Type", 
  Genre.Name AS "Genre" 
  From Track 
JOIN Album ON Track.AlbumId == Album.AlbumId 
JOIN MediaType ON Track.MediaTypeId == MediaType.MediaTypeId 
JOIN Genre ON Track.GenreId == Genre.GenreId;
