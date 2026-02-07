SELECT
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice), 1) AS total_spent
FROM transactions
WHERE Quantity > 0
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;