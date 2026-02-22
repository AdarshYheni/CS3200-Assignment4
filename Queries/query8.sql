SELECT
    p.PlaylistId,
    p.Name AS PlaylistName,
    ROUND(SUM(t.Milliseconds) / 3600000.0, 2) AS LengthHours
FROM playlists AS p
JOIN playlist_track AS pt
  ON pt.PlaylistId = p.PlaylistId
JOIN tracks AS t
  ON t.TrackId = pt.TrackId
WHERE p.Name IS NOT NULL
  AND t.Milliseconds IS NOT NULL
GROUP BY p.PlaylistId, p.Name
HAVING (SUM(t.Milliseconds) / 3600000.0) > 2
ORDER BY LengthHours DESC, p.PlaylistId;