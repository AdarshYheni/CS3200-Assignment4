# Media Database SQL Assignment

## Overview
This project contains SQL queries written for the Media Store SQLite database.  
The goal of this assignment is to practice writing SQL queries using joins, grouping, filtering, and window functions based on a provided ERD.

All queries were written using **SQLite** and tested in **VS Code**.

Each query is stored in its own `.sql` file as required.

---

## Query Descriptions

### Query 1  
Returns last names and emails of customers who made purchases.  
Uses a join between `customers` and `invoices` to ensure only purchasing customers are included.  
Duplicate customers are removed using `DISTINCT`.

---

### Query 2  
Returns album names and their corresponding artist names.  
Joins `albums` and `artists` using `ArtistId`.

---

### Query 3  
Counts the number of unique customers in each state.  
Uses `COUNT(DISTINCT CustomerId)` and groups by state.  
Null states are excluded.

---

### Query 4  
Returns states that have more than 10 unique customers.  
Uses `HAVING COUNT(DISTINCT CustomerId) > 10`.

---

### Query 5  
Finds artists who created albums with the word **"symphony"** in the title.  
Uses `LOWER()` and `LIKE` for case-insensitive matching.

---

### Query 6  
Finds artists who performed MPEG tracks in either:
- Brazilian Music playlist  
- Grunge playlist  

Uses joins across:
- playlists  
- playlist_track  
- tracks  
- media_types  
- albums  
- artists  

Filters media types containing `"MPEG"`.

---

### Query 7  
Counts how many artists have published at least 10 MPEG tracks.  
Groups tracks by artist and filters using `HAVING COUNT(...) >= 10`.

---

### Query 8  
Calculates total playlist length in **hours**.  
Tracks store duration in milliseconds.  

Conversion used: