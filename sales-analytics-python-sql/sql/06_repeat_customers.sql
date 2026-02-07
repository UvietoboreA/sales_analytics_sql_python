WITH customers_orders AS (
    SELECT 
        CustomerID,
        COUNT(DISTINCT InvoiceNo) AS num_orders
    FROM transactions
    GROUP BY CustomerID
)
    SELECT 
        c.CustomerID,
        c.num_orders,
        ROUND(
            (c.num_orders * 100.0) / 
            (SELECT SUM(num_orders) FROM customers_orders),
            1
        ) AS percent
    FROM customers_orders c 
    ORDER BY percent DESC
    LIMIT 10;