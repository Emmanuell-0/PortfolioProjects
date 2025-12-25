# 📊 E-Commerce Product Performance Analysis (SQL & Power BI)

## 📌 Project Overview
This project analyzes e-commerce product data to understand how **price**, **product quality (ratings)**, and **customer engagement (verified reviews)** interact.  
The goal is to identify what drives demand, uncover underperforming segments, and highlight characteristics of successful products.

The analysis was conducted using **SQL for data exploration and segmentation**, and **Power BI for interactive visualization and storytelling**.

---

## 🗂 Dataset Description
The dataset represents product listings from an e-commerce platform and includes the following fields:

- **product_name** – Name of the product  
- **price** – Product price  
- **verified_ratings** – Number of verified customer reviews  
- **avg_rate** – Average customer rating  
- **date** – Snapshot month (May 2024)

> ⚠️ Note: The dataset is highly skewed, with a large proportion of products having `0.0` ratings. This characteristic became a key analytical focus.

---

## 🛠 Tools & Technologies
- **SQL** – Data cleaning, aggregation, segmentation, and analysis  
- **Power BI** – Interactive dashboards and visual analytics  
- **Excel / CSV** – Data import and preprocessing  

---

## 🔍 Analytical Approach

### 1️⃣ Data Sanity Check
- Assessed total number of products, average prices, ratings, and review counts.
- Identified unusually low overall average ratings, indicating skewed data.

### 2️⃣ Rating Segmentation
Products were grouped into quality buckets:
- **High Rated** (≥ 4 stars)
- **Mid Rated** (3 – 3.9 stars)
- **Low Rated** (< 3 stars)

This allowed cleaner comparison across quality tiers.

### 3️⃣ Demand vs Quality Analysis
- Compared **average verified reviews** across rating segments.
- Used reviews as a proxy for customer demand and trust.

### 4️⃣ Price vs Quality Trade-off
- Analyzed whether higher prices correspond to better ratings.
- Investigated pricing behavior across rating buckets.

### 5️⃣ Price Sensitivity
- Split products into **Above Average Price** vs **Below Average Price** groups.
- Compared engagement and ratings between price tiers.

### 6️⃣ Top Products by Social Proof
- Identified products with the highest number of verified reviews.
- Examined their price and rating characteristics.

---

## 📈 Key Findings & Insights

### 🔑 1. Market Skew & Catalog Quality
- Over **75% of products** fall into the **Low Rated** category.
- These products significantly drag down overall platform performance metrics.

### 🔑 2. Quality Drives Demand
- **High Rated products receive ~50x more reviews** than low-rated products.
- Strong evidence that **ratings directly influence customer engagement**.

### 🔑 3. Price ≠ Quality
- The **highest-priced products are often the lowest rated**.
- Customers are not automatically associating higher prices with better value.

### 🔑 4. Pricing Sweet Spot
- Products in the **low-to-mid price range** consistently show:
  - Higher ratings
  - More reviews
  - Stronger customer trust

### 🔑 5. Market Opportunity Gap
- The **Mid Rated (3–4 stars)** segment is almost nonexistent.
- This suggests either:
  - Polarization between success and failure, or
  - An untapped improvement opportunity for sellers.

---

## 📊 Dashboard Overview (Power BI)
The interactive dashboard includes:
- KPI cards (Total Products, Avg Price, Avg Rating, Total Reviews)
- Price vs Rating scatter plot
- Reviews vs Ratings analysis
- Highest-rated and most-reviewed products
- Rating distribution and product clustering

> Dashboards are fully interactive, allowing filtering by rating and product.

---

## 🎯 Business Implications
- Platforms should **promote high-rated, moderately priced products**.
- Low-rated, high-priced products should be reviewed, discounted, or delisted.
- Sellers can increase competitiveness by targeting the **quality + affordability** zone.

---

## 🚀 Conclusion
This project demonstrates how **SQL-driven analysis combined with Power BI visualization** can uncover actionable insights from raw e-commerce data.  
The findings highlight the critical role of product quality in driving customer trust and demand, while challenging assumptions around pricing and value.

---

## 📎 Files Included
- SQL analysis queries  
- Power BI dashboard (.pbix)  
- Dataset (CSV)  
- Dashboard screenshots  

