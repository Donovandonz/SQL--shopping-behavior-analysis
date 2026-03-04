-- Performance by location --

SELECT 
    location,
    COUNT(DISTINCT customer_id) as customer_count,
    SUM(purchase_amount) as total_revenue,
    ROUND(AVG(purchase_amount), 2) as avg_transaction,
    ROUND(AVG(review_rating), 2) as avg_customer_rating
FROM shopping_staging
GROUP BY location
ORDER BY total_revenue DESC;