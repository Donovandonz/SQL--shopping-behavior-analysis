-- Frequency of purchases distribution --

SELECT 
    frequency_of_purchases,
    COUNT(DISTINCT customer_id) as customer_count,
    ROUND(AVG(purchase_amount), 2) as avg_transaction_value
FROM shopping_staging
GROUP BY frequency_of_purchases
ORDER BY 
    CASE frequency_of_purchases
        WHEN 'Daily' THEN 1
        WHEN 'Weekly' THEN 2
        WHEN 'Bi-Weekly' THEN 3
        WHEN 'Monthly' THEN 4
        ELSE 5
    END;