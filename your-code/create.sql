CREATE DATABASE IF NOT EXISTS cardealer;
USE cardealer;

-- | ID | VIN | Manufacturer | Model | Year | Color |
CREATE TABLE IF NOT EXISTS car(
    car_ID int primary key,
	VIN varchar(40) not null,
	manufacturer varchar(40) not null, 
	model varchar(40) not null, 
	year INT not null, 
	color varchar(40)
    
);


-- 2. **Customers** 
-- | Customer ID | Name | Phone | Email | Address | City | State/Province | Country | Postal |
CREATE TABLE IF NOT EXISTS customers(
	customer_ID int primary key, 
    customer int,
	c_name varchar(40) not null,
	phone_number varchar(20) not null, 
	email varchar(40), 
	address varchar(60) not null, 
	city varchar(40) not null, 
	state_province varchar(40) not null, 	
	country varchar(40) not null,
	zip_postal int not null
    );
    


-- ID | Staff ID | Name | Store |
CREATE TABLE IF NOT EXISTS salesperson(
	salesperson_ID int primary key,
	staff int, 
	s_name varchar(40) not null,
	store varchar (40) not null
);


-- | ID | Invoice Number | Date | Car | Customer | Sales Person |
CREATE TABLE IF NOT EXISTS invoces(
	inv_ID int primary key,
	invoice_number int not null, 
	date date, 
	car int, -- recbendo car_ID
	customers int, -- recbendo customer_ID
    salesperson int -- recebendo salespersons_id
);


ALTER TABLE invoces
	ADD FOREIGN KEY (car) 
REFERENCES car(car_ID)
ON DELETE SET NULL;

ALTER TABLE invoces
	ADD FOREIGN KEY (customers) 
REFERENCES customers(customer_ID)
ON DELETE SET NULL;

ALTER TABLE invoces
	ADD FOREIGN KEY (salesperson) 
REFERENCES salesperson(salesperson_ID)
ON DELETE SET NULL;




CREATE TABLE IF NOT EXISTS store(
    car_ID int,
    customer_ID int,
    salesperson_ID int, 
    primary key (car_ID, customer_ID, salesperson_ID),
    FOREIGN key (car_ID) REFERENCES car(car_ID) ON DELETE CASCADE,
    FOREIGN key (customer_ID) REFERENCES customers(customer_ID) ON DELETE CASCADE,
    FOREIGN key (salesperson_ID) REFERENCES salesperson(salesperson_ID) ON DELETE CASCADE
    );