INSERT INTO Cars VALUES
(0, '3K096I98581DHSNU', 'Volkswagen', 'Tiguan', '2019-01-01', 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019-01-01', 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018-01-01', 'White');

INSERT INTO Customer VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'USA', '33130'),
(30001, 'Napoleon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'France', 'France', '75008');

INSERT INTO Sales_Person VALUES
('00001', 'Petey Cruiser', 'Madrid', 10001),
('00002', 'Anna Sthesia', 'Barcelona', 10001),
('00003', 'Paul Molive', 'Berlin', 20001),
('00004', 'Gail Forcewind', 'Paris', 20001),
('00005', 'Paige Turner', 'Miami', 30001),
('00006', 'Bob Frapples', 'Mexico City', 30001),
('00007', 'Walter Melon', 'Amsterdam',30001),
('00008', 'Shonda Leer', 'São Paulo2', 10001);

INSERT INTO Invoices VALUES
('852392038', '2018-09-22', '0', 10001, '00001'),
('852394038', '2018-10-22', '0', 10001, '00002'),
('852329038', '2018-08-22', '0', 10001, '00003'),
('731166526', '2018-12-31', '3', 20001, '00005'),
('271135104', '2019-01-22', '2', 30001, '00007');