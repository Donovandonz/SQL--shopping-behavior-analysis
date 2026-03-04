-- Review rating analysis by category --

SELECT 
    category,
    ROUND(AVG(review_rating), 2) as avg_rating,
    COUNT(*) as review_count,
    SUM(CASE WHEN review_rating >= 4 THEN 1 ELSE 0 END) as high_ratings,
    SUM(CASE WHEN review_rating <= 2 THEN 1 ELSE 0 END) as low_ratings
FROM shopping_staging
GROUP BY category
ORDER BY avg_rating DESC;