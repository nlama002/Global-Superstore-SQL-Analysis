# Global-Superstore-SQL-Analysis


This project analyzes sales and profitability trends in the Global Superstore dataset using SQL on Google BigQuery. The goal is to uncover actionable business insights that can drive revenue, optimize pricing, and improve regional and customer segment performance.

---

## 🧠 Objectives

- Clean and explore raw sales data from Global Superstore
- Understand key performance metrics across products, regions, and segments
- Identify hidden inefficiencies (e.g., high-sales but unprofitable products)
- Deliver insights that support strategic business decision-making

---

## 🛠️ Tools Used

- Google BigQuery (SQL)
- CSV exports for analysis outputs
- GitHub for project documentation

---

## 📂 Project Structure

| Folder        | Description                               |
|---------------|-------------------------------------------|
| `SQL/`        | All SQL scripts organized by analysis step|
| `Outputs/`    | Exported CSVs of key findings             |
| `README.md`   | Project summary and business insights     |

---


---

## 🧠 Key Insights

### 🔹 Insight 1: Technology Dominates Sales, But Not Margins
- **Technology** leads in sales ($4.7M) and profit ($663K).
- **Office Supplies** offers better profit efficiency (3.7 M) and profit ($518)

🎯 *Recommendation:* Optimize pricing and focus on high-margin Office Supply products.

---

### 🔹 Insight 2: Top Products Are Concentrated in Tech & Furniture
- The most profitable product is the **Canon imageCLASS Copier** ($25K+) in profit.
- Top products mostly belong to **Technology** and **Furniture**, indicating these are high-value categories.

🎯 *Recommendation:* Bundle and promote these best-selling items to drive strategic growth.

---

### 🔹 Insight 3: Region & Segment Combinations Drive Opportunity
- **Central - Consumer** is the highest performing pair (~$1.48M sales, $150K profit).
- **North and South** also show strong performance in Consumer sales.

🎯 *Recommendation:* Double down on Consumer campaigns in high-growth regions with tailored offerings.

---

### 🔹 Insight 4: Home Office Has Best Profit Margin
| Segment        | Profit Margin | Unique Customers |
|----------------|---------------|------------------|
| Home Office    | **11.99%**    | 907              |
| Corporate      | 11.54%        | 1457             |
| Consumer       | 11.51%        | 2509             |

- Despite the fewest customers, **Home Office** earns the most per dollar sold.

🎯 *Recommendation:* Explore premium services or exclusive deals for Home Office users.


## 📌 Purpose

This analysis is part of my data analytics portfolio, designed to demonstrate my ability to:
- Work with large datasets in the cloud (BigQuery)
- Write complex SQL queries (window functions, CTEs, aggregation)
- Translate raw data into business decisions and recommendations
- Tell a compelling data-driven story

---
