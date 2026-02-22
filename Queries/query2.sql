SELECT
    al.Title,
    ar.Name
FROM albums AS al
JOIN artists as ar
    ON ar.ArtistID = al.ArtistId
WHERE ar.ArtistID IS NOT NULL and al.ArtistID IS NOT NULL
ORDER BY ar.Name, al.Title;


