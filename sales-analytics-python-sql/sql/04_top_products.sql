SELECT 
    StockCode,
    Description,
    ROUND(SUM(Quantity * UnitPrice), 1) AS revenue
FROM transactions
WHERE Quantity > 0
GROUP BY StockCode, Description
ORDER BY revenue DESC
LIMIT 10;