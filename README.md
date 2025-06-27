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

## 🔍 Key Insights

### 🔹 Insight 1: High Discount, Low Profit Products
> Identified products with avg discounts > 30% but negative profit. These may be over-discounted or priced below cost. Recommending pricing review and supplier cost evaluation.

### 🔹 Insight 2: High Sales, Negative Profit Products
> Several products (e.g., Motorola Smart Phone - Cordless) generate high sales but still operate at a loss. These may be loss leaders, overly discounted, or affected by high returns or logistics costs.

### 🔹 Insight 3: Regional Performance
> Central region leads in both sales and profit. However, North and North Asia regions demonstrate high profitability per dollar sold — ideal for margin-focused expansion.

### 🔹 Insight 4: Segment-Level Profitability
> Consumer segment leads in volume, but Home Office segment shows the highest profit margin (~12%). Suggests potential for targeted growth in this efficient segment.

---

## 📈 Sample Query Snippets

```sql
-- Top 10 products with high discounts but negative profit
SELECT Product_Name, AVG(Discount), SUM(Profit)
FROM `...`
GROUP BY Product_Name
HAVING AVG(Discount) > 0.3 AND SUM(Profit) < 0
ORDER BY AVG(Discount) DESC
