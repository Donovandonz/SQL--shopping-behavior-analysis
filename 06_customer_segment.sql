-- Segment customers by spending --

WITH customer_stats AS (
    SELECT 
        customer_id,
        SUM(purchase_amount) as total_spent,
        COUNT(*) as purchase_count
    FROM shopping_staging
    GROUP BY customer_id
)
SELECT 
    CASE 
        WHEN total_spent < 50 THEN 'Low Spender'
        WHEN total_spent BETWEEN 100 AND 500 THEN 'Medium Spender'
        WHEN total_spent BETWEEN 501 AND 1000 THEN 'High Spender'
        ELSE 'VIP'
    END as spending_segment,
    COUNT(*) as customer_count,
    ROUND(AVG(purchase_count), 2) as avg_purchases,
    ROUND(AVG(total_spent), 2) as avg_total_spent
FROM customer_stats
GROUP BY 
    CASE 
        WHEN total_spent < 50 THEN 'Low Spender'
        WHEN total_spent BETWEEN 100 AND 500 THEN 'Medium Spender'
        WHEN total_spent BETWEEN 501 AND 1000 THEN 'High Spender'
        ELSE 'VIP'
    END;