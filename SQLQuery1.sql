--select Sum(total_price) AS Total_Revenue from pizza_sales
--select sum(total_price)/count(distinct(order_id)) AS Avg_Order_Values from pizza_sales
--select sum(quantity) AS Total_Pizza_Sold from pizza_sales
--select count(distinct(order_id)) AS Todal_Orders from pizza_sales
--select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(Distinct(order_id)) as Decimal(10,2)) as decimal(10,2)) as Avg_Pizzas_Per_order from pizza_sales
--Hourly trend for total pizza sold
/*
SELECT DATEPART(HOUR, order_time) AS order_hour,
SUM(quantity) as Total_pizzas_sold 
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time) 
*/
--WEEKLY TREND FOR ORDERSE
/*
--SELECT DATEPART(ISO_WEEK, order_date) as week_number,
--YEAR(order_date) as order_year,COUNT(DISTINCT order_id) as Total_orders
--FROM pizza_sales
--GROUP BY DATEPART(ISO_WEEK, order_date),YEAR(order_date)
--ORDER BY DATEPART(ISO_WEEK, order_date),YEAR(order_date)
*/
--Percentage of sales by pizza category

/*
select pizza_category,SUM(total_price) as total_sales, SUM(total_price)*100 / (select SUM(total_price) from pizza_sales)  AS PCT  
from pizza_sales 
group by pizza_category
*/
--for a particular month like january
--APPLY WHERE CLAUSE BOTH IN INNER AND OUTER QUERY
/*
select pizza_category,SUM(total_price) as total_sales, SUM(total_price)*100 / (select SUM(total_price) from pizza_sales where MONTH(order_date)=1)  AS PCT  
from pizza_sales
where MONTH(order_date)=1
group by pizza_category
*/
--Total sales by Pizza Category
/*
select pizza_category, SUM(total_price) as Total_sale from pizza_sales
group by pizza_category
*/
--PERCENTAGE OF SALES BY PIZZA SIZE
/*select pizza_size, SUM(total_price) AS Total_Sale,cast(SUM(total_price)*100/(select SUM(total_price) from pizza_sales) AS decimal(10,2))  AS PSalesBySize
from pizza_sales
group by pizza_size 
order by pizza_size  desc
*/
--PERCENTAGE OF SALES BY PIZZA SIZE in 1st quarter of year
/*select pizza_size, SUM(total_price) AS Total_Sale,
cast(SUM(total_price)*100/(select SUM(total_price) from pizza_sales where datepart(quarter, order_date)=1) AS decimal(10,2))  AS PSalesBySize
from pizza_sales
where datepart(quarter, order_date)=1
group by pizza_size 
order by pizza_size  desc
*/
--TOP 5 BEST SELLERS BY REVENUE
/*
SELECT top 5 pizza_name, SUM(total_price) AS Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue DESC 
*/
--BOTTOM 5
/*SELECT top 5 pizza_name, SUM(total_price) AS Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue ASC 
*/
--select * from pizza_sales
--TOP 5 BEST SELLER BY TOTAL QUANITY 
/*
SELECT top 5 pizza_name, SUM(quantity) as Total_Quantity  
from pizza_sales
group by pizza_name
order by Total_Quantity desc 
*/
--TOP 5 BEST SELLER BY  TOTAL ORDERS
select top 5 pizza_name, COUNT(distinct order_id) AS Total_orders from pizza_sales
group by pizza_name
order by  Total_orders DESC















