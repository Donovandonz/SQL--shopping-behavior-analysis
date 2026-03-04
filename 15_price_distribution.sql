-- Price distribution within categories--

SELECT 
    category,
    ROUND(MIN(purchase_amount), 2) as min_price,
    ROUND(MAX(purchase_amount), 2) as max_price,
    ROUND(AVG(purchase_amount), 2) as avg_price,
    ROUND(STDDEV(purchase_amount), 2) as price_variation
FROM shopping_staging
GROUP BY category
ORDER BY avg_price DESC;