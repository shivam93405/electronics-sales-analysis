
use  gada_electronics;

-- top 5 selling products in terms of sales
select Product, sum(Sales) as total_sales from sales_data
group by Product
order by total_sales
desc limit 5;

-- top 5 selling products in terms of quantities ordered
select Product, sum(`sales_data`.`Quantity Ordered`) as total_quantity from sales_data
group by Product
order by total_quantity
desc limit 5;

-- top 5 selling cities in terms of sales
select city, sum(Sales) as total_sales from sales_data
group by city
order by total_sales
desc limit 5;

-- top 5 sales by month
select month, sum(Sales) as total_sales from sales_data
group by month
order by total_sales
desc limit 5;

-- total sales and quantities ordered
select sum(sales) as total_sales, 
sum(`sales_data`.`Quantity Ordered`) as total_quantities_ordered
from sales_data;

 




