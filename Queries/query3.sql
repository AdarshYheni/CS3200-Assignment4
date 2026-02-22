SELECT
    c.State,
    COUNT(DISTINCT c.CustomerID)
FROM customer AS c
WHERE c.State IS NOT NULL
GROUP BY c.State
ORDER BY c.State;