SELECT 
    strftime('%H', InvoiceDate) AS hour,
    SUM(Quantity) AS sales_volume
FROM transactions
WHERE Quantity > 0
GROUP BY hour
ORDER BY sales_volume DESC;