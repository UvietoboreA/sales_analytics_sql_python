WITH order_totals AS (
    SELECT 
        InvoiceNo,
        SUM(Quantity * UnitPrice) AS value
    FROM transactions
    WHERE Quantity > 0
    GROUP BY InvoiceNo
)
SELECT
    ROUND(AVG(value), 2) AS avg_order_value
FROM order_totals;