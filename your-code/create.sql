
-- 0. CREATE DATABASE:

DROP DATABASE IF EXISTS car_company;
CREATE DATABASE IF NOT EXISTS car_company;
USE car_company;

-- 1. CREATE TABLES:

-- 1.1 cars
CREATE TABLE IF NOT EXISTS cars(
vin INT PRIMARY KEY,
manufacturer VARCHAR(40),
model VARCHAR(40),
year INT,
color VARCHAR(20)
);

-- 1.2 customers
CREATE TABLE IF NOT EXISTS customers(
customer_id INT PRIMARY KEY,
name VARCHAR(40),
phone_no VARCHAR(20),
email VARCHAR(40),
address VARCHAR(60),
cyty VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20),
postal_code VARCHAR(20)
);

-- 1.3 salespersons
CREATE TABLE IF NOT EXISTS sales_persons(
staff_id INT PRIMARY KEY,
name VARCHAR(40),
store VARCHAR(40)
);

-- 1.4 invoices
CREATE TABLE IF NOT EXISTS invoices (
invoice_id INT PRIMARY KEY,
date DATE,
car INT,
customer INT,
sales_person INT
);
 
-- 2. ALTER THE TABLES (Establishing relationships)

-- 2.1 Relate car in invoces with vin in cars
ALTER TABLE invoices
	ADD FOREIGN KEY (car)
REFERENCES cars(vin)
ON DELETE SET NULL;

-- 2.2 relate custumer in invoices with custumer_id in custumers
ALTER TABLE invoices
	ADD FOREIGN KEY (customer)
REFERENCES customers(customer_id)
ON DELETE SET NULL; 

-- 2.3 relate sales_persons in invoices with staf_id in sales_persons
ALTER TABLE invoices
	ADD FOREIGN KEY(sales_person)
REFERENCES sales_persons(staff_id)
ON DELETE SET NULL;