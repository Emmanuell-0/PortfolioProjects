# 📊 Crypto Market Data Analysis (API Automation)

## Overview
This project demonstrates how to **collect, automate, clean, and analyze live cryptocurrency market data** using the CoinMarketCap API.

The goal was to simulate a real-world data workflow:
- Pull live market data from an external API
- Automate repeated data collection over time
- Store raw data for tracking changes
- Transform and reshape the data for analysis
- Visualize short-term and long-term market movements

---

## 🎯 Project Objective
To understand how cryptocurrency prices change across different time windows and compare trends between major coins using automated API data collection.

This mirrors how analysts track markets continuously rather than relying on one-off snapshots.

---

## 🔌 Data Source
- **API:** CoinMarketCap (Pro API)
- **Data pulled:**  
  - Top cryptocurrencies by market rank  
  - Price percentage changes over:
    - 1 hour  
    - 24 hours  
    - 7 days  
    - 30 days  
    - 60 days  
    - 90 days  

---

## ⚙️ Workflow Breakdown

### 1️⃣ API Connection & Data Extraction
- Connected to CoinMarketCap using authenticated API requests
- Retrieved live cryptocurrency listings in USD
- Normalized nested JSON responses into a pandas DataFrame
- Added timestamps to track when data was collected

---

### 2️⃣ Automation Layer
- Built an automated API runner
- Repeated data pulls at fixed intervals (1-minute cycles)
- Appended new data to a CSV file to simulate time-series accumulation
- Handled connection and timeout errors gracefully

---

### 3️⃣ Data Cleaning & Reshaping
- Grouped data by cryptocurrency name
- Calculated average percentage changes across time windows
- Converted wide data into a long (tidy) format for analysis
- Renamed and simplified time-window labels for readability

---

### 4️⃣ Exploratory Analysis & Visualization
- Compared short-term vs long-term performance across coins
- Visualized trends using:
  - Line charts
  - Categorical point plots
- Applied consistent styling for clarity and presentation

---

## 🔍 Key Insights
- Short-term volatility (1h / 24h) differs significantly from long-term trends
- Some cryptocurrencies show strong long-term stability despite short-term noise
- Automated data collection provides deeper insight than single-snapshot analysis

---

## 🧠 Tools & Technologies
- **Python**
- **Requests** (API communication)
- **Pandas** (data cleaning & transformation)
- **Seaborn & Matplotlib** (visualization)
- **CSV storage** (lightweight persistence)

---

## 🚀 Why This Matters
This project showcases:
- API integration
- Data automation
- Real-time data handling
- Analytical thinking
- Clear data storytelling

It reflects the type of workflow used in **financial analysis, market research, and data engineering pipelines**.

---

## 📌 Next Improvements
- Schedule execution with a task scheduler (cron / Airflow)
- Store data in a database instead of CSV
- Build an interactive dashboard (Power BI / Tableau / Streamlit)
- Add anomaly detection for sudden market moves

---

## 👤 Author
**Emmanuel Okundaye**  
Chartered Accountant (ACA) | Data & Analytics  
