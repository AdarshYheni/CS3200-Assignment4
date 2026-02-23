SELECT
    ar.Name
FROM artists AS ar
JOIN albums AS al
    ON al.ArtistId = ar.ArtistId
WHERE
    ar.Name IS NOT NULL
    AND al.Title IS NOT NULL
    AND LOWER(al.Title) LIKE '%symphony%'
ORDER BY ar.Name;