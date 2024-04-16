SELECT * FROM public."Pizza"

Select sum(total_price) as Total_Revenue from public."Pizza"
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM public."Pizza"

SELECT SUM(quantity) AS Total_pizza_sold FROM public."Pizza"

SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM public."Pizza"

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM public."Pizza"

SELECT to_char(order_date, 'Day') AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM public."Pizza"
GROUP BY order_day
ORDER BY order_day;

SELECT TO_CHAR(order_date, 'Month') AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM public."Pizza"
GROUP BY TO_CHAR(order_date, 'Month');

SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from public."Pizza") AS DECIMAL(10,2)) AS PCT
FROM public."Pizza"
GROUP BY pizza_category
order by pct desc;

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from public."Pizza")  AS DECIMAL(10,2)) AS PCT
FROM public."Pizza"
GROUP BY pizza_size
ORDER BY pizza_size

SELECT pizza_category, SUM(quantity) AS Total_Quantity_Sold
FROM public."Pizza"
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;


SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM public."Pizza"
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
Limit 5;

SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM public."Pizza"
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
Limit 5;

SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM public."Pizza"
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
limit 5;

SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM public."Pizza"
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold aSC
limit 5;

SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM public."Pizza"
GROUP BY pizza_name
ORDER BY Total_Orders DESC
limit 5;

SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM public."Pizza"
GROUP BY pizza_name
ORDER BY Total_Orders ASC
limit 5;

