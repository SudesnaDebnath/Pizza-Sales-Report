select * from dbo.pizza_sales;

select DATENAME(dw,order_date) as order_day ,
count(distinct order_id) as total_orders 
from pizza_sales
group by DATENAME(dw,order_date);

select DATENAME(MONTH,order_date) as Month_name ,
count(distinct order_id) as total_orders 
from pizza_sales
group by DATENAME(MONTH,order_date)
order by total_orders desc;

select pizza_category, 
CAST(
sum(total_price) *100 / (select sum(total_price) from pizza_sales)
as decimal(10,2))
as '%_of_sales_by_pizza_category'
from pizza_sales
group by pizza_category;

select pizza_category, 
CAST(SUM(total_price) as decimal(10,2)) as Total_Sales,
CAST(
sum(total_price) *100 / (select sum(total_price) from pizza_sales where month(order_date) = 1) as decimal(10,2)) as '%_of_sales_by_pizza_category'
from pizza_sales
where month(order_date) = 1
group by pizza_category;
