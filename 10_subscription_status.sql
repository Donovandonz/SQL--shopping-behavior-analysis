-- Subscription status impact -- 

SELECT 
    subscription_status,
    COUNT(DISTINCT customer_id) as customers,
    ROUND(AVG(purchase_amount), 2) as avg_spend,
    ROUND(AVG(review_rating), 2) as avg_rating,
    SUM(purchase_amount) as total_revenue
FROM shopping_staging
GROUP BY subscription_status;