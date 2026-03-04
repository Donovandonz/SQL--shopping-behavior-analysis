CREATE DATABASE shopping_behaviour;
USE shopping_behaviour;


CREATE TABLE shopping_staging AS
SELECT *
FROM shopping_behavior;

SELECT *
FROM shopping_staging;


-- IDENTIFY QUALITY DATA ISSUES -- SUCH AS DUPLICATE --

SELECT 
ROW_NUMBER() OVER (PARTITION BY customer_id, age, gender, item_purchased, category, purchase_amount, location, size,
color, season, review_rating, subscription_status, discount_applied, previous_purchases, payment_method, frequency_of_purchases) AS row_num
FROM shopping_staging;

WITH duplicate_cte AS
(SELECT 
ROW_NUMBER() OVER (PARTITION BY customer_id, age, gender, item_purchased, category, purchase_amount, location, size,
color, season, review_rating, subscription_status, discount_applied, previous_purchases, payment_method, frequency_of_purchases) AS row_num
FROM shopping_staging)
SELECT *
FROM duplicate_cte
WHERE row_num >=1;


-- Check for NULL values in specific columns --

SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_member_id,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS null_visit_date,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS null_age,
    SUM(CASE WHEN item_purchased IS NULL THEN 1 ELSE 0 END) AS null_gender,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS null_membership_type,
    SUM(CASE WHEN purchase_amount IS NULL THEN 1 ELSE 0 END) AS null_workout_type,
    SUM(CASE WHEN location IS NULL THEN 1 ELSE 0 END) AS null_duration,
    SUM(CASE WHEN size IS NULL THEN 1 ELSE 0 END) AS null_calories,
    SUM(CASE WHEN color IS NULL THEN 1 ELSE 0 END) AS null_check_in,
    SUM(CASE WHEN season IS NULL THEN 1 ELSE 0 END) AS null_attendance,
    SUM(CASE WHEN review_rating IS NULL THEN 1 ELSE 0 END) AS null_review_rating,
    SUM(CASE WHEN subscription_status IS NULL THEN 1 ELSE 0 END) AS null_subscription_status,
    SUM(CASE WHEN discount_applied IS NULL THEN 1 ELSE 0 END) AS null_discount_applied,
    SUM(CASE WHEN payment_method IS NULL THEN 1 ELSE 0 END) AS null_payment_method,
    SUM(CASE WHEN frequency_of_purchases IS NULL THEN 1 ELSE 0 END) AS null_frequency_of_purchases
FROM shopping_staging;


-- Standardize Text Formatting --


 UPDATE your_table_name
 SET gender = 
   CASE 
        WHEN UPPER(gender) IN ('M', 'MALE', 'MALE ') THEN 'Male'
        WHEN UPPER(gender) IN ('F', 'FEMALE', 'FEMALE ') THEN 'Female'
        WHEN UPPER(gender) IN ('O', 'OTHER', 'NON-BINARY') THEN 'Other'
        WHEN gender IS NULL OR LTRIM(RTRIM(gender)) = '' THEN 'Unknown'
        ELSE INITCAP(LTRIM(RTRIM(gender)))  -- Capitalize first letter
    END;


-- 1. Customer Demographics --

-- Age distribution of customers --

SELECT 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END as age_group,
    COUNT(DISTINCT customer_id) AS customer_count,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase,
    COUNT(*) as total_transactions
FROM shopping_staging
GROUP BY 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END
ORDER BY age_group;


-- Gender analysis --

SELECT 
    gender,
    COUNT(DISTINCT customer_id) AS customer_count,
    ROUND(AVG(purchase_amount), 2) AS avg_spend,
    SUM(purchase_amount) AS total_revenue
FROM shopping_staging
GROUP BY gender;



-- 2. Purchase Patterns Analysis --

-- Most popular categories --

SELECT 
    category,
    COUNT(*) as purchase_count,
    SUM(purchase_amount) as total_revenue,
    ROUND(AVG(purchase_amount), 2) as avg_price,
    COUNT(DISTINCT customer_id) as unique_customers
FROM shopping_staging
GROUP BY category
ORDER BY purchase_count DESC;


-- Seasonal trends --

SELECT 
    season,
    COUNT(*) as purchases,
    SUM(purchase_amount) as revenue,
    ROUND(AVG(purchase_amount), 2) as avg_spend
FROM shopping_staging
GROUP BY season
ORDER BY revenue DESC;


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


-- 3. Customer Value Analysis --

-- Customer lifetime value (based on previous purchases) --

SELECT 
    customer_id,
    age,
    gender,
    SUM(purchase_amount) as total_spent,
    COUNT(*) as total_purchases,
    ROUND(AVG(purchase_amount), 2) as avg_purchase_value,
    MAX(previous_purchases) as previous_purchases_count
FROM shopping_staging
GROUP BY customer_id, age, gender
ORDER BY total_spent DESC
LIMIT 20;


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



-- 4. Product Preferences --

-- Size preferences by category --

SELECT 
    category,
    size,
    COUNT(*) as purchase_count,
    ROUND(AVG(review_rating), 2) as avg_rating
FROM shopping_staging
GROUP BY category, size
ORDER BY category, purchase_count DESC;


-- Color preferences --

SELECT 
    color,
    COUNT(*) as times_purchased,
    ROUND(AVG(review_rating), 2) as avg_rating,
    SUM(purchase_amount) as total_revenue
FROM shopping_staging
GROUP BY color
ORDER BY times_purchased DESC;


-- 5. Promotional Effectiveness --


-- Impact of discounts --

SELECT 
    discount_applied,
    COUNT(*) as transaction_count,
    ROUND(AVG(purchase_amount), 2) as avg_purchase,
    ROUND(AVG(review_rating), 2) as avg_rating,
    COUNT(DISTINCT customer_id) as customers
FROM shopping_staging
GROUP BY discount_applied;


-- Subscription status impact -- 

SELECT 
    subscription_status,
    COUNT(DISTINCT customer_id) as customers,
    ROUND(AVG(purchase_amount), 2) as avg_spend,
    ROUND(AVG(review_rating), 2) as avg_rating,
    SUM(purchase_amount) as total_revenue
FROM shopping_staging
GROUP BY subscription_status;


-- 6. Location Analysis --

-- Performance by location --

SELECT 
    location,
    COUNT(DISTINCT customer_id) as customer_count,
    SUM(purchase_amount) as total_revenue,
    ROUND(AVG(purchase_amount), 2) as avg_transaction,
    ROUND(AVG(review_rating), 2) as avg_customer_rating
FROM shopping_staging
GROUP BY location
ORDER BY total_revenue DESC;


-- 7. Payment Method Preferences --

-- Payment method analysis --
SELECT 
    payment_method,
    COUNT(*) as usage_count,
    ROUND(AVG(purchase_amount), 2) as avg_transaction,
    SUM(purchase_amount) as total_processed,
    COUNT(DISTINCT customer_id) as users
FROM shopping_staging
GROUP BY payment_method
ORDER BY usage_count DESC;


-- 8. Customer Satisfaction Analysis --

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


-- Correlation between Discount and Ratings -- 

SELECT 
    CASE 
        WHEN discount_applied = 'Yes' THEN 'With Discount'
        ELSE 'Without Discount'
    END as discount_status,
    ROUND(AVG(review_rating), 2) as avg_rating,
    COUNT(*) as total_purchases
FROM shopping_staging
GROUP BY 
    CASE 
        WHEN discount_applied = 'Yes' THEN 'With Discount'
        ELSE 'Without Discount'
    END;
    
    
-- 9. Advanced Analysis: Customer Behavior Patterns --


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


-- 10. Price Range Analysis by Category --

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


SELECT *
FROM shopping_staging;