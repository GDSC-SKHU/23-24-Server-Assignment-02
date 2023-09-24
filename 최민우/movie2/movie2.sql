CREATE DATABASE movie2 ;
use movie2;

CREATE TABLE theaters (
id INTEGER PRIMARY KEY ,
name VARCHAR(20),
location VARCHAR(20));

CREATE TABLE customers (
id INTEGER PRIMARY KEY ,
name VARCHAR(20),
email VARCHAR(20));

CREATE TABLE reservations (
id  INTEGER PRIMARY KEY,
theater_id INTEGER,
customer_id INTEGER,
date DATE,
FOREIGN KEY(theater_id) REFERENCES theaters(id), 
FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO theaters(id, name, location)
		VALUES (1, '메가박스', '마포'), 
        (2, 'CGV', '강남'),
		(3, '롯데시네마', '구로');
        
INSERT INTO customers(id, name, email)
		VALUES(1,'Kim', 'Kim@gmail.com'), (2, 'Park', 'Park@gmail.com'), (3, 'Choi', 'Choi@gmail.com');
        
INSERT INTO reservations(id, theater_id, customer_id, date) 
		VALUES (1, 1, 1, '2023-01-01'), (2, 2, 2, '2023-01-02'), (3, 3, 3, '2023-01-03');