SELECT
    CustomerID,
    SUM(Quantity * UnitPrice) AS total_spent
FROM transactions
GROUP BY CustomerID;