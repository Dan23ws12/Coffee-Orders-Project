-- return the number of all customers

use coffeeorders;

select count(*) from customers; 

-- pick the top 10 customers that spent the most money on coffee
select customer_name, SUM(sales) as total_sales
from customers c inner join orders o 
where c.customer_ID = o.customer_ID
group by customer_name 
order by total_sales desc
limit 10;

-- order coffee type by sales
select p.coffee_type , sum(sales) as total_sales
from product p inner join orders o 
where p.product_ID = o.product_ID 
group by p.coffee_type 
order by total_sales;
