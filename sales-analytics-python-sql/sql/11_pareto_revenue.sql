WITH customer_revenue AS (
SELECT
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice), 1) AS revenue
FROM transactions
WHERE Quantity > 0
GROUP BY CustomerID
), 
ranked_customers AS (
SELECT *,
    NTILE(5) OVER (ORDER BY revenue DESC) AS revenue_bucket
    FROM customer_revenue
)
SELECT 
    SUM(revenue) AS top_20_percent_revenue
FROM ranked_customers
WHERE revenue_bucket = 1;