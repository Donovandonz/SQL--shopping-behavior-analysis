-- Color preferences --

SELECT 
    color,
    COUNT(*) as times_purchased,
    ROUND(AVG(review_rating), 2) as avg_rating,
    SUM(purchase_amount) as total_revenue
FROM shopping_staging
GROUP BY color
ORDER BY times_purchased DESC;