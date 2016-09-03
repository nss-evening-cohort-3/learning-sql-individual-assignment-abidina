SELECT Playlist.Name AS "Playlist Name", 
COUNT(PlaylistTrack.TrackId) AS "Number of Tracks" FROM Playlist 
JOIN PlaylistTrack ON Playlist.PlaylistId == PlaylistTrack.PlaylistId
 GROUP BY PlaylistTrack.PlaylistId;