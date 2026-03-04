-- Gender analysis --

SELECT 
    gender,
    COUNT(DISTINCT customer_id) AS customer_count,
    ROUND(AVG(purchase_amount), 2) AS avg_spend,
    SUM(purchase_amount) AS total_revenue
FROM shopping_staging
GROUP BY gender;