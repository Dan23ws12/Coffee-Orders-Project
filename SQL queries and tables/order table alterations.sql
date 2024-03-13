use coffeeorders;

select str_to_date(o_date, "%m/%d/%Y") from orders
limit 7;

update orders 
	set order_date = str_to_date(o_date, "%m/%d/%Y");
	
-- added o_date to orders table to convert order dates to date format, date was originally strings

alter table orders drop o_date;
