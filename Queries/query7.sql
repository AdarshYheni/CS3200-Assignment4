SELECT COUNT(*) AS NumArtistsWithAtLeast10MPEGTracks
FROM (
    SELECT
        ar.ArtistId
    FROM artists AS ar
    JOIN albums  AS al
      ON al.ArtistId = ar.ArtistId
    JOIN tracks  AS t
      ON t.AlbumId = al.AlbumId
    JOIN media_types AS mt
      ON mt.MediaTypeId = t.MediaTypeId
    WHERE ar.ArtistId IS NOT NULL
      AND mt.Name LIKE '%MPEG%'
    GROUP BY ar.ArtistId
    HAVING COUNT(t.TrackId) >= 10
) AS eligible_artists;