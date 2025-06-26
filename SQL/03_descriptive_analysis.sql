--1. Total Sales, Profit, Quantity
WITH cleaned_orders AS (
  SELECT
    Sales,
    Profit,
    Quantity
  FROM
    `nomadic-hash-463314-f3.superstore.order`
)

SELECT
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit,
  SUM(Quantity) AS total_quantity
FROM
  cleaned_orders;


--2. Sales and profit by category

WITH cleaned_orders AS (
  SELECT
    Category,
    Sales,
    Profit
  FROM
    `nomadic-hash-463314-f3.superstore.order`
)

SELECT
  Category,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
  
FROM
  cleaned_orders
GROUP BY
  Category
ORDER BY
  total_sales DESC;

--3. Top 10 Products by Profit

WITH cleaned_orders AS (
  SELECT
    Product_Name,
    Profit
  FROM
    `nomadic-hash-463314-f3.superstore.order`
)

SELECT
  Product_Name,
  ROUND(SUM(Profit), 2) AS total_profit
FROM
  cleaned_orders
GROUP BY
  Product_Name
ORDER BY
  total_profit DESC
LIMIT 10;

--4. Sales by region and segment
WITH cleaned_orders AS (
  SELECT
    Region,
    Segment,
    Sales,
    Profit
  FROM
    `nomadic-hash-463314-f3.superstore.order`
)

SELECT
  Region,
  Segment,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM
  cleaned_orders
GROUP BY
  Region, Segment
ORDER BY
  total_sales DESC;

