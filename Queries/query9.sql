WITH customer_spend AS (
    SELECT
        c.CustomerId,
        c.FirstName,
        c.LastName,
        c.Country,
        SUM(i.Total) AS TotalSpent
    FROM customers AS c
    JOIN invoices  AS i
      ON i.CustomerId = c.CustomerId
    WHERE c.Country IS NOT NULL
      AND c.FirstName IS NOT NULL
      AND c.LastName IS NOT NULL
      AND i.Total IS NOT NULL
    GROUP BY c.CustomerId, c.FirstName, c.LastName, c.Country
)
SELECT
    CustomerId,
    FirstName,
    LastName,
    Country,
    TotalSpent,
    DENSE_RANK() OVER (
        PARTITION BY Country
        ORDER BY TotalSpent DESC
    ) AS SpendRankInCountry
FROM customer_spend
ORDER BY Country, SpendRankInCountry, TotalSpent DESC;