# SQL--shopping-behavior-analysis
🛍️📊 Shopping Behavior Analysis Project 

## Dataset used
-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/shopping_behavior.csv">RAW.shopping-behavior-dataset</a>

---

## 📋 Project Overview

A comprehensive SQL-based data analysis project examining customer shopping behavior patterns. This project analyzes transaction data to uncover insights about customer demographics, purchase patterns, product preferences, and promotional effectiveness.

---

## 🛢️ Database & Tools

| Component | Details |
|-----------|---------|
| **Database** | MySQL 8.0 |
| **Tool Used** | MySQL Workbench |
| **Techniques** | Data cleaning, CTEs, aggregations, date functions, filtering, grouping, window functions, CASE statements |

---

### 🎯 Key Objectives
- Analyze customer demographics and spending patterns
- Identify popular products and categories
- Evaluate promotional effectiveness
- Understand seasonal shopping trends
- Segment customers based on value
- Provide data-driven business recommendations

---

## 🗄️ Database Schema

### Main Table: `shopping_staging`

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| customer_id | INT | Unique customer identifier |
| age | INT | Customer age |
| gender | VARCHAR | Customer gender |
| item_purchased | VARCHAR | Name of item purchased |
| category | VARCHAR | Product category |
| purchase_amount | DECIMAL | Amount spent on purchase |
| location | VARCHAR | Customer location/state |
| size | VARCHAR | Item size (S, M, L, XL, etc.) |
| color | VARCHAR | Item color |
| season | VARCHAR | Season of purchase |
| review_rating | DECIMAL | Customer rating (1-5) |
| subscription_status | VARCHAR | Active/Inactive subscription |
| discount_applied | VARCHAR | Yes/No discount applied |
| previous_purchases | INT | Number of previous purchases |
| payment_method | VARCHAR | Payment method used |
| frequency_of_purchases | VARCHAR | Purchase frequency pattern |

---

## 📊 Key Business Questions Answered

| # | Question | SQL File |
|:--:|----------|----------|
| 1 | Customer Demographic by Age distribution of customers? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/01_customer_demographic.sql">SQL-query</a> |
| 2 | Gender analysis? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/02_gender_analysis.sql">SQL-query</a> |
| 3 | Most popular categories? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/03_most_popular_category.sql">SQL-query</a> |
| 4 | Seasonal trends? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/04_seasonal_trends.sql">SQL-query</a> |
| 5 | Frequency of purchases distribution? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/05_frequency_of_purchases.sql">SQL-query</a> |
| 6 | Customer segment by total spending? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/06_customer_segment.sql">SQL-query</a> |
| 7 | Size preferences by category? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/07_size_preferences.sql">SQL-query</a> |
| 8 | Color preferences? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/08_color_preferences.sql">SQL-query</a> |
| 9 | Impact of discounts? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/09_discount_impact.sql">SQL-query</a> |
| 10 | Subscription status impact? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/10_subscription_status.sql">SQL-query</a> |
| 11 | Performance by location? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/11_performance_by_location.sql">SQL-query</a> |
| 12 | Payment method type? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/12_payment_method.sql">SQL-query</a>|
| 13 | Review rating analysis by category? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/13_review_rating.sql">SQL-query</a> |
| 14 | Identify repeat purchase patterns? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/14_identify_repeat_purchase.sql">SQL-query</a> |
| 15 | Price distribution within categories? |-<a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/15_price_distribution.sql">SQL-query</a> |
