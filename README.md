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
# 1. Customer Demographic by Age distribution of customers
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

# 2. Gender analysis?
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

# 3. Most popular categories?
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

---

# 4. Seasonal trends?
<img width="310" height="117" alt="Screenshot 2026-03-04 125458" src="https://github.com/user-attachments/assets/e69e2f9d-8946-43e8-b95b-6e490daae0fc" />


## 📅 Seasonal Trends Analysis

### Season Performance

| Season | Purchases | Revenue | Avg Spend |
|--------|-----------|---------|-----------|
| Fall | 975 | $60,018 | $61.56 |
| Spring | 999 | $58,679 | $58.74 |
| Winter | 971 | $58,607 | $60.36 |
| Summer | 955 | $55,777 | $58.41 |
| **TOTAL** | **3,900** | **$233,081** | **$59.82** |

### Key Findings

- **Fall is peak season**: Highest revenue ($60K) and avg spend ($61.56)
- **Spring drives volume**: Most purchases (999) but lower avg spend
- **Winter premium**: High avg spend ($60.36) with fewer purchases
- **Summer low**: Lowest across all metrics - opportunity for growth

### Seasonal Breakdown

| Season | Revenue Share | Purchase Share | Avg Spend vs Overall |
|--------|:-------------:|:--------------:|:--------------------:|
| Fall | 25.7% | 25.0% | +$1.74 above avg |
| Spring | 25.2% | 25.6% | -$1.08 below avg |
| Winter | 25.1% | 24.9% | +$0.54 above avg |
| Summer | 23.9% | 24.5% | -$1.41 below avg |

### Quick Insights

| Season | Best For | Strategy |
|--------|----------|----------|
| Fall | Revenue & premium sales | Maximize inventory |
| Spring | Customer acquisition | Bundle deals |
| Winter | Gift shoppers | Holiday campaigns |
| Summer | Clearance | End-of-season sales |

### Top Takeaways

1. **Fall = Peak Performance** - Invest in marketing and stock
2. **Spring = Volume Driver** - Focus on quantity over price
3. **Summer = Growth Opportunity** - Plan promotions to boost sales

---

# 5. Frequency of purchases distribution?
<img width="452" height="175" alt="Screenshot 2026-03-04 125830" src="https://github.com/user-attachments/assets/4b0afefc-9694-40cf-8efb-a35498858c4c" />

## 🔄 Frequency of Purchases Distribution

### By Frequency

| Frequency | Customers | Avg Spend |
|-----------|----------|-----------|
| Every 3 Months | 584 | $60.08 |
| Annually | 572 | $60.17 |
| Quarterly | 563 | $59.98 |
| Monthly | 553 | $59.33 |
| Bi-Weekly | 547 | $60.69 |
| Fortnightly | 542 | $59.05 |
| Weekly | 539 | $58.97 |
| **TOTAL** | **3,900** | **$59.82** |

### Key Insights

| Category | Finding | Insight |
|----------|---------|---------|
| Most Customers | Every 3 Months (584) | Largest segment - infrequent buyers |
| Highest Spenders | Bi-Weekly ($60.69) | Regular shoppers = premium customers |
| Lowest Spenders | Weekly ($58.97) | Frequent buyers = value seekers |

### Segment Analysis

| Segment | Customers | Avg Spend | Strategy |
|---------|----------|-----------|----------|
| Infrequent (3+ months) | 1,719 | $60.08 | Reactivation campaigns |
| Regular (Monthly/Bi-Weekly) | 1,100 | $60.01 | Loyalty programs |
| Frequent (Weekly/Fortnightly) | 1,081 | $59.01 | Upsell opportunities |

### Quick Takeaways

- **Infrequent buyers = highest value** - Remind them to shop
- **Frequent buyers = lowest value** - Offer bundles to increase spend
- **Bi-Weekly shoppers = sweet spot** - Study what makes them spend more

---

# 6. Customer segment by total spending?
<img width="482" height="92" alt="Screenshot 2026-03-04 130139" src="https://github.com/user-attachments/assets/1fd3b594-71f4-48d0-bfa8-d070f5dde8ae" />

## 💰 Customer Spending Segments

### By Segment

| Segment | Customers | % of Base | Avg Spend | Revenue Share |
|---------|----------|:---------:|-----------|:-------------:|
| VIP | 2,398 | 61.5% | $74.86 | 77% |
| Low Spender | 1,466 | 37.6% | $34.09 | 21% |
| Medium Spender | 36 | 0.9% | $100.00 | 2% |
| **TOTAL** | **3,900** | **100%** | **$59.82** | **100%** |

### Quick Insights

| Segment | Key Finding | Action |
|---------|-------------|--------|
| VIP | 2,398 customers, 77% of revenue | Retention programs |
| Low Spender | 1,466 customers, 21% of revenue | Upsell campaigns |
| Medium Spender | 36 customers, $100 avg spend | Study & replicate |

### Top Takeaways

- **VIPs rule**: 61% of customers drive 77% of revenue
- **Low Spenders = opportunity**: 38% of base with room to grow
- **Medium Spenders = premium**: Small but high-value niche

---

# 7. Size preferences by category?
<img width="351" height="366" alt="Screenshot 2026-03-04 130359" src="https://github.com/user-attachments/assets/bbc6d3fe-9347-40db-aa45-de5504a4d06b" />

## 📏 Size Preferences by Category

### Clothing

| Size | Purchases | Avg Rating |
|------|-----------|------------|
| M | 778 | 3.69 |
| L | 481 | 3.75 |
| S | 284 | 3.76 |
| XL | 194 | 3.73 |

### Accessories

| Size | Purchases | Avg Rating |
|------|-----------|------------|
| M | 562 | 3.77 |
| L | 307 | 3.74 |
| S | 230 | 3.79 |
| XL | 141 | 3.82 |

### Footwear

| Size | Purchases | Avg Rating |
|------|-----------|------------|
| M | 267 | 3.71 |
| L | 172 | 3.80 |
| S | 93 | 3.87 |
| XL | 67 | 3.99 |

### Outerwear

| Size | Purchases | Avg Rating |
|------|-----------|------------|
| M | 148 | 3.69 |
| L | 93 | 3.75 |
| S | 56 | 3.86 |
| XL | 27 | 3.79 |

### Quick Insights

| Size | Total Purchases | Avg Rating | Insight |
|------|-----------------|------------|---------|
| M | 1,755 | 3.72 | Most popular - stock up |
| L | 1,053 | 3.76 | Solid performer |
| S | 663 | 3.82 | High satisfaction |
| XL | 429 | 3.83 | Best rated, low sales |

### Top Takeaways

- **M is king** - Most purchases across all categories
- **XL = quality over quantity** - Highest satisfaction but lowest sales
- **Footwear XL = 3.99 rating** - Near-perfect customer satisfaction

---

# 8. Color preferences?
<img width="382" height="535" alt="Screenshot 2026-03-04 130621" src="https://github.com/user-attachments/assets/a75e4ed7-e610-4d3c-8713-95426ada300a" />

## 🎨 Color Preferences Analysis

### Top 10 Colors by Popularity

| Color | Purchases | Rating | Revenue |
|-------|-----------|--------|---------|
| Olive | 177 | 3.72 | $10,292 |
| Yellow | 174 | 3.86 | $10,308 |
| Silver | 173 | 3.72 | $9,832 |
| Teal | 172 | 3.74 | $10,459 |
| Green | 169 | 3.68 | $11,104 |
| Black | 167 | 3.84 | $9,753 |
| Violet | 166 | 3.65 | $10,245 |
| Cyan | 166 | 3.63 | $10,274 |
| Gray | 159 | 3.88 | $9,936 |
| Maroon | 158 | 3.80 | $9,405 |

### Top Performers by Category

| Category | Color | Value |
|----------|-------|-------|
| Most Purchased | Olive | 177 units |
| Highest Rated | Gray | 3.88 |
| Most Revenue | Green | $11,104 |
| Best All-Around | Yellow | Top 3 in all metrics |

### Quick Insights

| Finding | Action |
|---------|--------|
| Yellow = consistent top performer | Feature in marketing |
| Gray = highest customer satisfaction | Promote as premium |
| Green = revenue leader | Stock more, test price increase |
| Olive = most popular | Ensure adequate inventory |

### Top 3 Takeaways

1. **Yellow is your safest bet** - Top performer across all metrics
2. **Gray = quality** - Highest ratings, customers love it
3. **Green = money** - Generates most revenue despite mid-popularity

---

#9. Impact of discounts?
<img width="525" height="67" alt="Screenshot 2026-03-04 130839" src="https://github.com/user-attachments/assets/bba250f3-c6ab-4f52-b021-594c3bd2d5ab" />

## 🏷️ Impact of Discounts Analysis

### Discount vs No Discount

| Metric | No Discount | With Discount |
|--------|-------------|---------------|
| Transactions | 2,223 (57%) | 1,677 (43%) |
| Avg Purchase | $60.13 | $59.28 |
| Avg Rating | 3.76 | 3.74 |
| Customers | 2,223 | 1,677 |

### Key Takeaways

| Finding | Insight |
|---------|---------|
| No discount = higher spend ($60.13 vs $59.28) | Full-price buyers spend more |
| No discount = more transactions (57%) | Most customers buy at full price |
| Ratings nearly equal | Discounts don't affect satisfaction |

### Quick Insights

- **Full-price shoppers** spend $0.85 more per transaction
- **Discount users** = 43% of sales - important segment
- **No rating impact** - Brand perception stays strong

### Top 3 Takeaways

1. **Discounts not needed for most** - 57% buy at full price
2. **$0.85 premium from full-price** - Protect margin where possible
3. **Strategic discounts work** - 43% volume without hurting ratings

---

# 10. Subscription status impact?
<img width="502" height="72" alt="Screenshot 2026-03-04 131102" src="https://github.com/user-attachments/assets/30af9d39-992f-43bb-96ba-f31cb86b7f46" />

## 📋 Subscription Status Impact Analysis

### Subscribers vs Non-Subscribers

| Metric | Non-Subscribers | Subscribers |
|--------|-----------------|-------------|
| Customers | 2,847 (73%) | 1,053 (27%) |
| Avg Spend | $59.87 | $59.49 |
| Avg Rating | 3.75 | 3.74 |
| Total Revenue | $170,436 (73%) | $62,645 (27%) |

### Quick Comparison

| Metric | Difference |
|--------|------------|
| Customer Split | 73% / 27% |
| Avg Spend Gap | +$0.38 non-subscribers |
| Rating Gap | +0.01 non-subscribers |
| Revenue Split | 73% / 27% |

### Key Insights

| Finding | Insight |
|---------|---------|
| 27% subscription rate | Healthy adoption - keep promoting |
| Subscribers spend $0.38 less | Focus on value proposition |
| Perfect revenue alignment | 73/27 split matches customer split |

### Top 3 Takeaways

1. **27% subscribed** - Solid base, opportunity to grow
2. **No spending premium** - Subscribers don't spend more per transaction
3. **Perfect alignment** - Revenue exactly matches customer distribution

---

# 11.  Performance by location?
<img width="593" height="536" alt="Screenshot 2026-03-04 131335" src="https://github.com/user-attachments/assets/1ad6f41a-0a63-41f3-a350-ea9c834d9128" />

## 📍 Performance by Location Analysis

### Top 10 States by Customers

| State | Customers | Revenue | Avg Transaction | Rating |
|-------|-----------|---------|-----------------|--------|
| Montana | 96 | $5,784 | $60.25 | 3.81 |
| California | 95 | $5,605 | $59.00 | 3.83 |
| Idaho | 93 | $5,587 | $60.08 | 3.78 |
| Illinois | 92 | $5,617 | $61.05 | 3.64 |
| Alabama | 89 | $5,261 | $59.11 | 3.78 |
| Minnesota | 88 | $4,977 | $56.56 | 3.75 |
| Nevada | 87 | $5,514 | $63.38 | 3.71 |
| New York | 87 | $5,257 | $60.43 | 3.75 |
| Nebraska | 87 | $5,172 | $59.45 | 3.73 |
| Maryland | 86 | $4,795 | $55.76 | 3.81 |

### Top Performers

| Category | State | Value |
|----------|-------|-------|
| Most Customers | Montana | 96 |
| Highest Revenue | Montana | $5,784 |
| Highest Transaction | Alaska | $67.60 |
| Best Rating | Texas | 3.91 |

### Key Takeaways

| Finding | Action |
|---------|--------|
| Montana leads across metrics | Invest more in this market |
| Alaska = premium transactions | Test higher price points |
| Texas = happiest customers | Ask for reviews, referrals |
| West Virginia = lowest rating | Investigate and improve |

### Quick Stats

- **Revenue range**: $3,400 - $5,800 across states
- **Rating range**: 3.58 (WV) - 3.91 (TX)
- **Top region**: Western states (MT, CA, ID, NV)

---

# 12. Payment method type?
<img width="517" height="158" alt="Screenshot 2026-03-04 131552" src="https://github.com/user-attachments/assets/0f004734-2dba-4050-abab-a077365cf0b5" />

## 💳 Payment Method Analysis

### Payment Method Comparison

| Payment Method | Usage | Avg Transaction | Total Revenue |
|----------------|-------|-----------------|---------------|
| PayPal | 677 | $59.25 | $40,109 |
| Credit Card | 671 | $60.07 | $40,310 |
| Cash | 670 | $59.70 | $40,002 |
| Debit Card | 636 | $60.92 | $38,742 |
| Venmo | 634 | $58.95 | $37,374 |
| Bank Transfer | 612 | $59.71 | $36,544 |

### Top Performers

| Category | Payment Method | Value |
|----------|----------------|-------|
| Most Used | PayPal | 677 transactions |
| Highest Avg Transaction | Debit Card | $60.92 |
| Most Revenue | Credit Card | $40,310 |
| Lowest Avg Transaction | Venmo | $58.95 |

### Quick Insights

| Finding | Action |
|---------|--------|
| Debit users spend most | Target with premium products |
| Credit Card drives revenue | Ensure smooth CC checkout |
| PayPal most popular | Keep as primary option |
| Venmo lowest spend | Offer incentives |

### Market Share

| Payment Method | Usage Share | Revenue Share |
|----------------|:-----------:|:-------------:|
| PayPal | 17.4% | 17.2% |
| Credit Card | 17.2% | 17.3% |
| Cash | 17.2% | 17.2% |
| Debit Card | 16.3% | 16.6% |
| Venmo | 16.3% | 16.0% |
| Bank Transfer | 15.7% | 15.7% |

### Top 3 Takeaways

1. **Debit Card = highest value** - Customers spend $1.10 more than average
2. **Credit Card = revenue leader** - Most total processed
3. **Even distribution** - All payment methods well-represented

---

# 13. Review rating analysis by category?
<img width="467" height="113" alt="Screenshot 2026-03-04 131806" src="https://github.com/user-attachments/assets/47c344d7-59dc-4746-8ea3-55af5cdb359c" />

## ⭐ Review Rating Analysis by Category

### Category Ratings

| Category | Avg Rating | vs Average | Performance |
|----------|------------|------------|-------------|
| Footwear | 3.84 | +0.09 | Best rated |
| Accessories | 3.78 | +0.03 | Above average |
| Outerwear | 3.77 | +0.02 | Above average |
| Clothing | 3.73 | -0.02 | Below average |
| **OVERALL** | **3.75** | **-** | |

### Rating Breakdown

| Category | % High Ratings (4-5⭐) | % Low Ratings (1-2⭐) |
|----------|:----------------------:|:---------------------:|
| Footwear | 41% | 7% |
| Accessories | 40% | 8% |
| Outerwear | 40% | 9% |
| Clothing | 37% | 10% |

### Quick Insights

| Category | Finding | Action |
|----------|---------|--------|
| Footwear | Highest rated (3.84) | Feature in marketing |
| Clothing | Lowest rated (3.73) | Review quality/sizing |
| Accessories | Solid performer (3.78) | Maintain quality |
| Outerwear | Above average (3.77) | Promote more |

### Top Takeaways

1. **Footwear wins** - Best ratings, promote as hero category
2. **Clothing opportunity** - Highest volume but lowest ratings - investigate
3. **Quality matters** - 40% of non-clothing items get 4+ stars

---

# 14. Identify repeat purchase patterns?
<img width="395" height="112" alt="Screenshot 2026-03-04 131957" src="https://github.com/user-attachments/assets/173ba2a6-83da-4cef-997b-dcfbef1829e2" />

## 🔁 Repeat Purchase Patterns Analysis

### First-Time Purchase Distribution

| Category | First-Time Customers | % of Total |
|----------|---------------------|:----------:|
| Clothing | 1,737 | 44.5% |
| Accessories | 1,240 | 31.8% |
| Footwear | 599 | 15.4% |
| Outerwear | 324 | 8.3% |
| **TOTAL** | **3,900** | **100%** |

### Key Finding

| Metric | Value |
|--------|-------|
| Repeat Purchase Rate | 0% |
| Avg Purchases Per Customer | 1.0 |
| One-Time Buyers | 3,900 (100%) |

### Quick Insights

| Insight | Action |
|---------|--------|
| No repeat purchases | Launch loyalty program immediately |
| Clothing top entry point | Target clothing buyers for repeat offers |
| All customers = one-time | Email marketing, retargeting campaigns |

### Top Takeaways

1. **Zero repeat business** - Every customer bought once
2. **Massive opportunity** - 3,900 customers to convert to repeat
3. **Clothing leads acquisition** - Start retention efforts here

---

# 15. Price distribution within categories?
<img width="440" height="117" alt="Screenshot 2026-03-04 132308" src="https://github.com/user-attachments/assets/b8161963-804a-4558-9cf2-81d915959bcb" />

## 💰 Price Distribution Within Categories

### Category Price Comparison

| Category | Price Range | Avg Price | Price Variation |
|----------|-------------|-----------|-----------------|
| Footwear | $20 - $100 | $60.26 | $23.62 |
| Clothing | $20 - $100 | $60.03 | $23.79 |
| Accessories | $20 - $100 | $59.84 | $23.29 |
| Outerwear | $20 - $100 | $57.17 | $24.55 |

### Rankings

| Metric | Top Category | Value |
|--------|--------------|-------|
| Highest Avg Price | Footwear | $60.26 |
| Lowest Avg Price | Outerwear | $57.17 |
| Most Variation | Outerwear | $24.55 |
| Least Variation | Accessories | $23.29 |

### Quick Insights

| Category | Price Position | Strategy |
|----------|---------------|----------|
| Footwear | Premium leader | Maintain premium positioning |
| Clothing | Near average | Volume driver |
| Accessories | Consistent value | Standard pricing works |
| Outerwear | Most varied | Cater to different segments |

### Top Takeaways

1. **All categories $20-$100** - Consistent pricing across board
2. **Footwear = top tier** - Highest average price
3. **Outerwear = most diverse** - Widest price range for different customers


---

# 👇Full SQL query code analysis👇
-< a href="https://github.com/Donovandonz/SQL--shopping-behavior-analysis/blob/main/Shopping_behavior_db.sql">shopping-behavior-sql-code-analysis</a>











