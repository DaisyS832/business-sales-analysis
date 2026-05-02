-- End-to-End Retail Sales Performance Analysis
-- SQL Analysis File
-- Dataset: cleaned_data.csv

-- 1. Preview the data
SELECT *
FROM sales
LIMIT 10;


-- 2. Total revenue, total quantity, and total transactions
SELECT
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(Quantity) AS total_units_sold,
    COUNT(DISTINCT TransactionNo) AS total_transactions,
    COUNT(DISTINCT CustomerNo) AS total_customers
FROM sales;


-- 3. Monthly sales trend
SELECT
    DATE_FORMAT(Date, '%Y-%m') AS sales_month,
    ROUND(SUM(Revenue), 2) AS monthly_revenue,
    SUM(Quantity) AS monthly_units_sold,
    COUNT(DISTINCT TransactionNo) AS monthly_transactions
FROM sales
GROUP BY DATE_FORMAT(Date, '%Y-%m')
ORDER BY sales_month;


-- 4. Top 10 products by revenue
SELECT
    ProductName,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(Quantity) AS total_units_sold
FROM sales
GROUP BY ProductName
ORDER BY total_revenue DESC
LIMIT 10;


-- 5. Top 10 products by quantity sold
SELECT
    ProductName,
    SUM(Quantity) AS total_units_sold,
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM sales
GROUP BY ProductName
ORDER BY total_units_sold DESC
LIMIT 10;


-- 6. Revenue by country
SELECT
    Country,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(DISTINCT TransactionNo) AS total_transactions,
    COUNT(DISTINCT CustomerNo) AS total_customers
FROM sales
GROUP BY Country
ORDER BY total_revenue DESC;


-- 7. Top 10 customers by revenue
SELECT
    CustomerNo,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    COUNT(DISTINCT TransactionNo) AS total_transactions,
    SUM(Quantity) AS total_units_purchased
FROM sales
GROUP BY CustomerNo
ORDER BY total_revenue DESC
LIMIT 10;


-- 8. Average order value
SELECT
    ROUND(SUM(Revenue) / COUNT(DISTINCT TransactionNo), 2) AS average_order_value
FROM sales;


-- 9. Repeat customer analysis
SELECT
    CustomerNo,
    COUNT(DISTINCT TransactionNo) AS number_of_orders,
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM sales
GROUP BY CustomerNo
HAVING COUNT(DISTINCT TransactionNo) > 1
ORDER BY number_of_orders DESC;


-- 10. Revenue ranking by country
SELECT
    Country,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    RANK() OVER (ORDER BY SUM(Revenue) DESC) AS revenue_rank
FROM sales
GROUP BY Country;