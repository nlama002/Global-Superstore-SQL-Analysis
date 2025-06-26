-- Step 1: Preview first 10 rows
SELECT *
FROM `nomadic-hash-463314-f3.superstore.order`
LIMIT 10;


-- Step 2: Count total rows
SELECT COUNT(*) AS total_rows
FROM `nomadic-hash-463314-f3.superstore.order`;


-- 🔍 Step 3: Check for missing or blank values in key fields
SELECT
  COUNTIF(Order_ID IS NULL OR Order_ID = '') AS missing_order_ids,
  COUNTIF(Order_Date IS NULL OR SAFE_CAST(Order_Date AS STRING) = '') AS missing_order_dates,
  COUNTIF(Sales IS NULL) AS missing_sales,
  COUNTIF(Profit IS NULL) AS missing_profit
FROM
  `nomadic-hash-463314-f3.superstore.order`;



-- 🧠 Step 4: Explore distinct values in key categories
SELECT
  COUNT(DISTINCT Customer_ID) AS unique_customers,
  COUNT(DISTINCT Product_ID) AS unique_products,
  COUNT(DISTINCT Region) AS unique_regions,
  COUNT(DISTINCT Segment) AS unique_segments,
  COUNT(DISTINCT Category) AS unique_categories
FROM
  `nomadic-hash-463314-f3.superstore.order`;
