-- Seasonal trends --

SELECT 
    season,
    COUNT(*) as purchases,
    SUM(purchase_amount) as revenue,
    ROUND(AVG(purchase_amount), 2) as avg_spend
FROM shopping_staging
GROUP BY season
ORDER BY revenue DESC;