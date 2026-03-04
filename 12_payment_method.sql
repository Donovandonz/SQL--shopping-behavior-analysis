-- Payment method analysis --
SELECT 
    payment_method,
    COUNT(*) as usage_count,
    ROUND(AVG(purchase_amount), 2) as avg_transaction,
    SUM(purchase_amount) as total_processed,
    COUNT(DISTINCT customer_id) as users
FROM shopping_staging
GROUP BY payment_method
ORDER BY usage_count DESC;