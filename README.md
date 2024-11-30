# Pizza-Sales-Report
PowerBI Project Analysis 

Use SQL Queries to check all measures are correct or not.

## The Situation:
Help an pizza sales company to gain insights into business performance by creating a Pizza Sales Dashboard.

## The Brief:
1. We need to analyze key indicators for our pizza sales data to gain insights into our business performance.
2. We would like to visualize various aspects of our pizza sales data to gian insights and understand key trends.

## The Raw Data:
This data is a pizza sales data.
This is a one year data. [2015]

It's contain -

1. pizza_id - Unique and primary key. This id is for each pizza sold.
2. order_id - It's not unique there are dulicate data(suppose one customer buy 4 pizzas at a time i.e., each pizza had same order_id) 
3. pizza_name_id - each pizza has own id it can be repeated
4. quantity - total quantity of each pizza
5. order_date - order placed date
6. order_time -order placed time
7. unit_price - cost of each pizza
8. total_price - total cost of pizzas
9. pizza_size - define pizza size
10. pizza_category - which type of pizza
11. pizza_ingredients - what kind of ingredients used in each pizza
12. pizza_name - The name of pizza

There are total 4800 records in this [Dataset](https://github.com/SudesnaDebnath/Pizza-Sales-Report/blob/main/pizza_sales.csv).

## The Objective:

### 1. Connect and Transform the Raw Data
Using Query Editing Tools in **PowerBI** Transform the raw data in the back-end, and organized them before loading data into front-end of PowerBI

### 2. Create Calculated Columns and Measures with DAX

#### Pizza_Sales Measures Formulas:

1. Total Revenue = SUM(pizza_sales[total_price])

2. Total Orders = DISTINCTCOUNT(pizza_sales[order_id])

3. Avg Order Value = [Total Revenue] / [Total Orders]

4. Total Pizzas Sold = SUM(pizza_sales[quantity])

5. Avg Pizzas Per Order = [Total Pizzas Sold] / [Total Orders]

#### Pizza_Sales New Columns:

1. Order Day = UPPER(LEFT(pizza_sales[Day Name],3))
	[ Before this, go to transform data & extract the day name]

2. Order Month = UPPER(LEFT(pizza_sales[Month Name],3))
	[ Before this, go to transform data & extract the month name, month number]

**Note:**
Here We have only one Table so no need to build a relational data model.

**Remark:**
Minimize Error: We use [SQL Queries](https://github.com/SudesnaDebnath/Pizza-Sales-Report/tree/main/SQL%20Query) to check our measures are correct or not.
No need to worry about the relationship between tables

### 3. Design an Interactive Dashboard to Vuisulaize the Data
Use tools of PowerBI like KPI', Filter , Donut Charts, Bar Charts,..., etc.

Use some [icons](https://github.com/SudesnaDebnath/Pizza-Sales-Report/tree/main/Images) for better understanding.
## Conclusion:
A well-designed dashboard should serve a distinct purpose for a distinct audience, use clear and effective metrics and visual, and provide a simple, intutive user experience.

[Check Dashboard](https://github.com/SudesnaDebnath/Pizza-Sales-Report/blob/main/pizza_sales.pbix)
