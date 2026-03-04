-- Most popular categories --

SELECT 
    category,
    COUNT(*) as purchase_count,
    SUM(purchase_amount) as total_revenue,
    ROUND(AVG(purchase_amount), 2) as avg_price,
    COUNT(DISTINCT customer_id) as unique_customers
FROM shopping_staging
GROUP BY category
ORDER BY purchase_count DESC;