-- Total Revenue --
SELECT SUM(total_price) AS Total_Revenue 
FROM pizza_sales


-- Average Order Value --
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Average_Order_Value 
FROM pizza_sales


-- total pizza sold --
SELECT SUM(quantity) AS Total_pizza_sold 
FROM pizza_sales


-- Total Orders --
SELECT COUNT(DISTINCT order_id) AS Total_Order 
FROM pizza_sales


-- Average Pizza Per Order --
-- Cast values to the decimal for the more precise result --
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10, 2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10, 2)) AS DECIMAL(10, 2))
AS Avg_pizza_per_Order
FROM pizza_sales


-- Daily Trend for total Orders --
-- DW : Day of the week --
SELECT DATENAME(DW, order_date) AS Order_day, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)


-- Hourly Trends for Total Orders --
-- Shows order volume of the pizza from the 9:00 am to 11:00 pm --
SELECT DATEPART(HOUR, order_time) AS Order_Hours, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time)


-- Percentage Sales by Pizza Category --
SELECT pizza_category, CAST(SUM(total_price)AS DECIMAL(10, 2)) As Total_Sales, 
CAST(SUM(total_price)*100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10, 2)) AS PCT_Sales
FROM pizza_sales
GROUP BY pizza_category


-- Percentage Sales by Pizza Size --
SELECT pizza_size, CAST(SUM(total_price)AS DECIMAL(10, 2)) As Total_Sales, 
CAST(SUM(total_price)*100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10, 2)) AS PCT_Sales
FROM pizza_sales
GROUP BY pizza_size
ORDER BY PCT_Sales


-- Total pizza sold by pizza category --
SELECT pizza_category, SUM(quantity) AS Total_pizza_sold
FROM pizza_sales
GROUP BY pizza_category


-- Top 5 best selling pizaa names by total sales --
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_pizza_sold DESC


-- Bottom 5 wrost selling pizaa names by total sales --
SELECT Top 5 pizza_name, SUM(quantity) AS Total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_pizza_sold ASC

-- show all columns of table --
SELECT * 
FROM pizza_sales

