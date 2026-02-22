SELECT
    c.State,
    COUNT(DISTINCT c.CustomerID)
FROM customers AS c
WHERE c.State IS NOT NULL
GROUP BY c.State
ORDER BY c.State;