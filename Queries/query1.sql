SELECT DISTINCT
    c.LastName,
    c.Email
FROM customers AS c
JOIN invoices AS i  
ON i.CustomerId = c.CustomerId
WHERE c.LastName IS NOT NULL AND c.Email IS NOT NULL
ORDER BY c.LastName, c.Email;
