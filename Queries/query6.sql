SELECT DISTINCT
    ar.Name
FROM playlists AS p
JOIN playlist_track AS pt
  ON pt.PlaylistId = p.PlaylistId
JOIN tracks AS t
  ON t.TrackId = pt.TrackId
JOIN media_types AS mt
  ON mt.MediaTypeId = t.MediaTypeId
JOIN albums AS al
  ON al.AlbumId = t.AlbumId
JOIN artists AS ar
  ON ar.ArtistId = al.ArtistId
WHERE p.Name IS NOT NULL
  AND ar.Name IS NOT NULL
  AND p.Name IN ('Brazilian Music', 'Grunge')
  AND mt.Name LIKE '%MPEG%'
ORDER BY ar.Name;