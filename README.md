# Media Database SQL Assignment

## Overview
This project contains SQL queries written for the Media Store SQLite database.  
The goal of this assignment is to practice writing SQL queries using joins, grouping, filtering, and window functions based on a provided ERD.

All queries were written using **SQLite** and tested in **VS Code**.

Each query is stored in its own `.sql` file as required.

---

## Query Descriptions

### Query 1  
Lists last names and emails of customers who made at least one purchase.  
Uses a join between `customers` and `invoices`.

---

### Query 2  
Shows each album and the artist who created it.  
Joins `albums` and `artists`.

---

### Query 3  
Counts unique customers in each state.  
Groups by state and excludes NULL values.

---

### Query 4  
Shows states with more than 10 unique customers.  
Uses `HAVING` to filter grouped results.

---

### Query 5  
Finds artists with albums containing the word "symphony" in the title.  
Uses `LIKE` for substring matching.

---

### Query 6  
Finds artists who performed MPEG tracks in the "Brazilian Music" or "Grunge" playlists.  
Uses joins across playlists, tracks, media types, albums, and artists.

---

### Query 7  
Counts how many artists have at least 10 MPEG tracks.  
Groups tracks by artist and filters with `HAVING`.

---

### Query 8  
Calculates playlist length in hours.  
Converts milliseconds to hours and shows only playlists longer than 2 hours.

---

### Query 9  
Shows each customer's total spending and the average spending in their country.  
Uses a window function to compare customers within the same country.