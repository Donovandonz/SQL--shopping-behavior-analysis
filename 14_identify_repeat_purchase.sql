-- Identify repeat purchase patterns --

WITH customer_category_preferences AS (
    SELECT 
        customer_id,
        category,
        COUNT(*) as times_purchased,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY COUNT(*) DESC) as preference_rank
    FROM shopping_staging
    GROUP BY customer_id, category
)
SELECT 
    category,
    COUNT(*) as customers_with_preference,
    ROUND(AVG(times_purchased), 1) as avg_purchases
FROM customer_category_preferences
WHERE preference_rank = 1
GROUP BY category
ORDER BY customers_with_preference DESC;