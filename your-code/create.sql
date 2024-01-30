DROP DATABASE IF EXISTS car_shop;
CREATE DATABASE IF NOT EXISTS car_shop;
USE car_shop;

CREATE TABLE IF NOT EXISTS cars_inventory ( -- NOT NULL
	car_id INT PRIMARY KEY,
	vin VARCHAR(40) UNIQUE NOT NULL,
    manufacturer VARCHAR(40) NOT NULL,
    model VARCHAR(40) NOT NULL,
    year_purchase CHAR(4) NOT NULL,
    color VARCHAR(10) NOT NULL
    
);

CREATE TABLE IF NOT EXISTS customers ( -- NOT NULL
	customer_id INT PRIMARY KEY,
    staff_id INT ,
    customer_name VARCHAR (40) NOT NULL, 
    phone_number VARCHAR(40) NOT NULL,
    email VARCHAR (40),
    address VARCHAR(40) NOT NULL,
    city VARCHAR(40) NOT NULL,
    state_province VARCHAR(40) NOT NULL,
    country VARCHAR(40) NOT NULL,
    zip_postal VARCHAR(40) NOT NULL
    
);

CREATE TABLE IF NOT EXISTS salespersons (
	salespersons_id INT PRIMARY KEY,
    staff_sales_id INT,
    salesperson_name VARCHAR (40) NOT NULL,
    store VARCHAR (40) NOT NULL
);

CREATE TABLE IF NOT EXISTS invoices (
	invoice_number INT PRIMARY KEY,
    invoice_date DATE NOT NULL,
    car_id INT,
    customer_id INT,
    salespersons_id INT

);

INSERT INTO cars_inventory (car_id, vin, manufacturer, model, year_purchase, color)
VALUES (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
		(1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
        (2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
        (3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2019, "Silver"),
        (4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
        (5, "DAM41UDN3CHU2WWF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO customers (customer_id, staff_id, customer_name, phone_number, email, address, city, state_province, country, zip_postal)
VALUES (0, 10001, "Pablo Picasso", "+34 636 17 63 82", NULL, "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
		(1, 20001, "Abraham Lincoln", "+1 305 907 7086", NULL, "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
        (2, 30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", NULL, "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");
        
INSERT INTO salespersons (salespersons_id, staff_sales_id, salesperson_name, store)
VALUES (0, 00001, "Petey Cruiser", "Madrid"),
		(1, 00002, "Anna Sthesia", "Barcelona"),
        (2, 00003, "Paul Molive", "Berlin"),
        (3, 00004, "Gail Forcewind", "Paris"),
        (4, 00005, "Paige Turner", "Mimia"),
        (5, 00006, "Bob Frapples", "Mexico City"),
        (6, 00007, "Water Melon", "Amsterdam"), 
        (7, 00008, "Shonda Leer", "São Paulo");


            
ALTER TABLE invoices
	ADD FOREIGN KEY (car_id) 
REFERENCES cars_inventory(car_id)
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (customer_id) 
REFERENCES customers(customer_id)
ON DELETE SET NULL;


ALTER TABLE invoices
	ADD FOREIGN KEY (salespersons_id) 
REFERENCES salespersons(salespersons_id)
ON DELETE SET NULL;
select * from invoices;

INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, salespersons_id)
	VALUES ("852399038", "2000-08-12", 0, 1, 3),
			("731166526", "2000-08-12", 3, 0, 5),
            ("271135104","2000-08-12", 2, 2, 7);

