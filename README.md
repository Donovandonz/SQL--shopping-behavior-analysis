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


---

# 📊 Key Findings & Insights
### 1. Customer Demographic by Age distribution of customers
<img width="437" height="132" alt="Customer-demographics" src="https://github.com/user-attachments/assets/704a1fb3-d54c-4050-b5d3-f6dae7837fee" />

## 💡 Key Insights

### Top 5 Age Group Insights

| Rank | Insight | Impact | Business Implication |
|:----:|---------|:------:|---------------------|
| 🥇1 | **46-60 age group dominates** (1,135 customers, 29.1% of total) | 🔴 High | Target marketing - This is your core demographic |
| 🥈2 | **18-25 smallest segment** (571 customers, 14.6%) | 🟡 Medium | Growth opportunity - Attract younger customers |
| 🥉3 | **18-25 spends the MOST** ($60.65 avg) | 🔴 High | Premium products - Young adults willing to spend more |
| 4 | **36-45 spends the LEAST** ($59.31 avg) | 🟢 Low | Value proposition - May respond to discounts |
| 5 | **All groups spend ~$59-60** | 🟡 Medium | Consistent spending across all ages |

### Age Distribution Insights

| Finding | Insight | Action |
|---------|---------|--------|
| **46-60 dominates** | 1,135 customers (29.1% of base) | Focus retention efforts here |
| **18-25 spends most** | $60.65 avg despite smallest size | Target for growth |
| **Narrow spend range** | $59.31 - $60.65 across groups | Pricing works universally |
| **Revenue distribution** | 46-60 group contributes 29% of revenue | Protect this segment |

### Growth Opportunities

1. **Expand 18-25 segment** - They spend well but are underrepresented
2. **Increase 36-45 frequency** - They spend least, potential for upselling
3. **Maintain 46-60 loyalty** - Core customer base

---

### 2. Gender analysis?
<img width="406" height="73" alt="Screenshot 2026-03-04 121906" src="https://github.com/user-attachments/assets/773760f6-defb-4a1b-9e3c-9b7f2ee76858" />

## 👥 Gender Analysis: Findings & Insights

### 📊 Gender Breakdown

| Metric | Female | Male | Difference |
|--------|--------|------|------------|
| Customer Count | 1,248 | 2,652 | +1,404 Male |
| % of Base | 32% | 68% | Male 2x larger |
| Avg Spend | $60.25 | $59.54 | Female +$0.71 |
| Total Revenue | $75,191 | $157,890 | Male +$82,699 |
| Revenue Share | 32.3% | 67.7% | Male 2/3 of revenue |

### 🔍 Key Findings

1. **Male Dominance**: 68% of customers are male (2,652 vs 1,248 female)
2. **Female Premium**: Women spend $0.71 more per transaction ($60.25 vs $59.54)
3. **Revenue Split**: Males generate 68% of total revenue ($157.9K)

### 🎯 Actionable Insights

- **Retain Male Customers**: They drive 2/3 of revenue
- **Target Female Growth**: Higher spenders but underrepresented
- **Opportunity**: 1,000+ female customers needed to balance gender gap

---

### 3. Most popular categories?
<img width="527" height="110" alt="Screenshot 2026-03-04 122410" src="https://github.com/user-attachments/assets/98c1871d-2d2d-4d4f-8862-87bc49686df5" />

## 🛍️ Most Popular Categories Analysis

### Category Performance

| Category | Purchase Count | Total Revenue | Avg Price |
|----------|---------------|---------------|-----------|
| Clothing | 1,737 | $104,264 | $60.03 |
| Accessories | 1,240 | $74,200 | $59.84 |
| Footwear | 599 | $36,093 | $60.26 |
| Outerwear | 324 | $18,524 | $57.17 |
| **TOTAL** | **3,900** | **$233,081** | **$59.82** |

### Key Findings

- **Clothing is #1**: 1,737 purchases, $104K revenue (45% of business) - Core category
- **Accessories strong #2**: 1,240 purchases, $74K revenue (32% of business) - Impulse buy potential
- **Footwear premium**: Highest avg price at $60.26 - Higher margin opportunity
- **Outerwear opportunity**: Lowest performance - Growth potential with seasonal promos

### Category Breakdown

| Category | % of Sales | Revenue Share |
|----------|:----------:|:-------------:|
| Clothing | 44.5% | 44.7% |
| Accessories | 31.8% | 31.8% |
| Footwear | 15.4% | 15.5% |
| Outerwear | 8.3% | 8.0% |

### Quick Insights

| Category | Key Takeaway |
|----------|--------------|
| Clothing | Protect your cash cow (45% revenue) |
| Accessories | Cross-sell opportunity (32% revenue) |
| Footwear | Premium positioning ($60.26 avg) |
| Outerwear | Growth opportunity (only 8%) |


