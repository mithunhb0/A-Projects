-- Analyze sales performance over time
-- Years wise
SELECT 
YEAR(order_date) AS order_year,   -- Covert date to year  
SUM(sales_amount) AS total_sales,  -- Sum the sales amout
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) AS total_quantity
FROM gold.fact_sales  
WHERE order_date IS NOT NULL     -- Filter not null in order date
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);

SELECT 
DATE_FORMAT(order_date, '%Y-%m') AS order_date, -- Extract only year and month
SUM(sales_amount) AS total_sales,  -- Sum the sales amout
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) AS total_quantity
FROM gold.fact_sales  
WHERE order_date IS NOT NULL     -- Filter not null in order date
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY DATE_FORMAT(order_date, '%Y-%m');


