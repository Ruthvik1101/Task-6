Create database Sales;
use Sales;

SELECT * FROM online_sales;

SELECT EXTRACT(MONTH FROM order_date) AS month
FROM online_sales;

SELECT MONTH(order_date) As Month, YEAR(order_date) AS YEAR
FROM online_sales 
GROUP BY month(order_date), year(order_date);

SELECT MONTH(order_date) AS month, YEAR(order_date) AS year, SUM(revenue) AS total_revenue
From online_sales 
GROUP BY MONTH(order_date), Year(order_date);

SELECT YEAR(order_date) AS year, MONTH(order_date) AS month,
COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date),MONTH(order_date);

SELECT YEAR(order_date) AS year,MONTH(order_date) AS month,
SUM(revenue) AS total_revenue,COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date),MONTH(order_date)
ORDER BY year, month;

SELECT YEAR(order_date) AS year,MONTH(order_date) AS month,
SUM(revenue) AS total_revenue,COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY YEAR(order_date),MONTH(order_date)
ORDER BY year, month;







