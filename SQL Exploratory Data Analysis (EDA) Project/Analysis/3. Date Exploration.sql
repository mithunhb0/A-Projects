-- Find the date of the first and last order 
SELECT 
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date
FROM gold.fact_sales;

-- How many years of sales available
-- Years
SELECT 
TIMESTAMPDIFF(YEAR, MIN(order_date), MAX(order_date)) AS order_range_year
FROM gold.fact_sales;

-- Find the youngest and oldest customer with age
SELECT 
MIN(birthdate) AS oldest_customer,
TIMESTAMPDIFF(YEAR, MIN(birthdate), CURRENT_DATE()) AS age_oldest_customer,
MAX(birthdate) AS youngest_customer,
TIMESTAMPDIFF(YEAR, MAX(birthdate), CURRENT_DATE()) AS age_youngest_customer
FROM gold.dim_customers;
