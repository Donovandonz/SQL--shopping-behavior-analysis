-- Size preferences by category --

SELECT 
    category,
    size,
    COUNT(*) as purchase_count,
    ROUND(AVG(review_rating), 2) as avg_rating
FROM shopping_staging
GROUP BY category, size
ORDER BY category, purchase_count DESC;