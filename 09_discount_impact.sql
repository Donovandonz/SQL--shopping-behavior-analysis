-- Impact of discounts --

SELECT 
    discount_applied,
    COUNT(*) as transaction_count,
    ROUND(AVG(purchase_amount), 2) as avg_purchase,
    ROUND(AVG(review_rating), 2) as avg_rating,
    COUNT(DISTINCT customer_id) as customers
FROM shopping_staging
GROUP BY discount_applied;