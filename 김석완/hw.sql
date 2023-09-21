CREATE DATABASE hw;
USE hw;

CREATE TABLE Theater(
theater_id INTEGER PRIMARY KEY AUTO_INCREMENT,
theater_name TEXT,
theater_location TEXT
);

CREATE TABLE Customer(
customer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
customer_name TEXT,
customer_phone INTEGER
);

CREATE TABLE Reservation(
reservation_id INTEGER PRIMARY KEY AUTO_INCREMENT,
theater_id INTEGER,
customer_id INTEGER,
reservation_date DATE,
FOREIGN KEY (theater_id) REFERENCES Theater(theater_id),
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);



INSERT INTO Theater (theater_name, theater_location) VALUES ('CGV', '부천');
INSERT INTO Theater (theater_name, theater_location) VALUES ('MEGA BOX', '부평');
INSERT INTO Theater (theater_name, theater_location) VALUES ('LOTTE CINEMA', '홍대');

INSERT INTO Customer (customer_name, customer_phone) VALUES ('김석완', 01011112222);
INSERT INTO Customer (customer_name, customer_phone) VALUES ('차지용', 01033334444);
INSERT INTO Customer (customer_name, customer_phone) VALUES ('박신영', 01055556666);

INSERT INTO Reservation (theater_id, customer_id, reservation_date) VALUES (1, 1, '2023-9-19');
INSERT INTO Reservation (theater_id, customer_id, reservation_date) VALUES (2, 2, '2023-9-20');
INSERT INTO Reservation (theater_id, customer_id, reservation_date) VALUES (3, 3, '2023-9-21');


SELECT
	Theater.theater_name,
    Customer.customer_name,
    Reservation.reservation_date
FROM
    Reservation
JOIN
    Theater ON Reservation.theater_id = Theater.theater_id
JOIN
    Customer ON Reservation.customer_id = Customer.customer_id;