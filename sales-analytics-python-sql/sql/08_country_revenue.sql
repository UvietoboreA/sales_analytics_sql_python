SELECT
    Country,
    ROUND(SUM(Quantity * UnitPrice), 1) AS revenue
FROM transactions
WHERE Quantity > 0
GROUP BY Country
ORDER BY revenue DESC;