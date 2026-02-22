WITH customer_totals AS (
    SELECT
        c.CustomerId,
        c.FirstName,
        c.LastName,
        c.Country,
        SUM(i.Total) AS TotalSpent
    FROM customers c
    JOIN invoices i
      ON i.CustomerId = c.CustomerId
    WHERE c.Country IS NOT NULL
    GROUP BY c.CustomerId, c.FirstName, c.LastName, c.Country
)

SELECT
    CustomerId,
    FirstName,
    LastName,
    Country,
    TotalSpent,

    AVG(TotalSpent) OVER (
        PARTITION BY Country
    ) AS AvgSpentInCountry

FROM customer_totals
ORDER BY Country, TotalSpent DESC;