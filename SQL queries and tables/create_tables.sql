use coffeeorders;

create table Product(
product_ID varchar(100),
coffee_type varchar(20),
roast_type varchar(20),	
size double,
unit_price double,
price_per_100g double,	
profit double,
primary key (product_ID)
);

create table Orders(
order_ID varchar(45) primary key,
order_date DATE,
customer_ID varchar(45),
product_ID varchar(45),
quantity double,
unit_price double,
Sales double,
foreign key (product_ID) references Product(product_ID)
	on delete set null,
foreign key (customer_ID) references Customers(customer_ID)
);

create table Customers(
customer_ID varchar(255),
customer_name varchar(255),
email varchar(255),
phone_number varchar(255),
address_line varchar(255),
city varchar(255),
country varchar(255),
postcode varchar(255),
has_loyalty_card varchar(10)
);

alter table customers add primary key (customer_ID);
