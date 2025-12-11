-- Running total by year
SELECT 
order_date,
total_sales,
SUM(total_sales) OVER(ORDER BY order_date) AS running_total_sales
FROM (
    SELECT 
	DATE_FORMAT(order_date, '%Y') AS order_date, 
	SUM(sales_amount) AS total_sales
	FROM gold.fact_sales  
	WHERE order_date IS NOT NULL
	GROUP BY DATE_FORMAT(order_date, '%Y')
    ) t;
    
-- Moving Average Price
SELECT 
order_date,
total_sales,
SUM(total_sales) OVER(ORDER BY order_date) AS running_total_sales,
AVG(average_price) OVER(ORDER BY order_date) AS moving_average_price
FROM (
    SELECT 
	DATE_FORMAT(order_date, '%Y') AS order_date, 
	SUM(sales_amount) AS total_sales,
    AVG(price) AS average_price
	FROM gold.fact_sales  
	WHERE order_date IS NOT NULL
	GROUP BY DATE_FORMAT(order_date, '%Y')
    ) t

