Drop database if exists car_control; 
Create database if not exists  car_control;
use  car_control;

create table if not exists Cars (
	car_id int,
    plate varchar(20) primary key,
    Manufacturer varchar(40) NOT NULL,
	Model varchar(12),
	Year date,
	Color varchar(12)
);

create table if not exists Customer (
	Customer_id varchar(40) primary key,
    Customer_Name varchar(40) NOT NULL,
	Phone varchar(40),
	Email varchar(40),
	Customer_Address varchar(40),
	City char(12) NOT NULL,
	State varchar(40),
	Country char(12) NOT NULL,
	ZIP char(12)
);

create table if not exists Sales_Person (
	Staff_id varchar(40) primary key,
	Sales_Name char(40) NOT NULL,
	Store_Name varchar(40),
    Customer_id varchar(40)
);

create table if not exists Invoices (
	Invoice_number int primary key,
	Date date,
	Car_id INT,
	Customer_id varchar(40),
	Sales_id varchar(12)
);

ALTER TABLE Cars
ADD INDEX idx_car_id (car_id);

ALTER TABLE Invoices
	add foreign key (Customer_id) REFERENCES Sales_Person (Staff_id)
ON DELETE SET NULL;

ALTER TABLE Invoices
ADD FOREIGN KEY (Car_id) REFERENCES Cars(car_id)
ON DELETE SET NULL;

ALTER TABLE Invoices
ADD FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id)
ON DELETE SET NULL;

ALTER TABLE Invoices
ADD FOREIGN KEY (Sales_id) REFERENCES Sales_Person(Staff_id);