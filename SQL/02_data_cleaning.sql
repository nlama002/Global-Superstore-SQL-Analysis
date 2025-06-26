-- Step 1: Create a cleaned CTE
WITH cleaned_orders AS (
  SELECT
    Order_ID,
    DATE(Order_Date) AS Order_Date,
    DATE(Ship_Date) AS Ship_Date,
    Ship_Mode,
    Customer_ID,
    Customer_Name,
    Segment,
    Country,
    City,
    State,
    Region,
    Product_ID,
    Category,
    Sub_Category,
    Product_Name,
    Sales,
    Quantity,
    Discount,
    Profit
  FROM
    `nomadic-hash-463314-f3.superstore.order`
)

-- Step 2: Preview the cleaned data
SELECT *
FROM cleaned_orders
LIMIT 10;
