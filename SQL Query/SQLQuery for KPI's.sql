select * from dbo.pizza_sales;

select SUM(total_price) as	Total_revenue from pizza_sales;

select SUM(total_price) / count(distinct order_id) as Avg_order_value from pizza_sales;

select sum(quantity) as total_pizza_sold from pizza_sales;

select count(distinct order_id) as total_orders from pizza_sales;

select CAST(
CAST(sum(quantity) as decimal(10,2)) / CAST(count(distinct order_id) as decimal(10,2))
as decimal(10,2))
as avg_pizzas_per_order 
from pizza_sales;