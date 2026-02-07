SELECT 
    strftime('%Y-%m', InvoiceDate) AS month,
    ROUND(SUM(Quantity * UnitPrice), 1) AS monthly_revenue
FROM transactions
WHERE Quantity > 0
GROUP BY month
ORDER BY monthly_revenue DESC;