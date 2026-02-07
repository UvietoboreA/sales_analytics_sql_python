SELECT 
    CustomerID,
    MAX(InvoiceDate)
FROM transactions
WHERE Quantity > 0
GROUP BY CustomerID
ORDER BY InvoiceDate ASC;