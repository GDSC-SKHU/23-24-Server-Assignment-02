CREATE DATABASE theater1;
USE theater1;

CREATE TABLE theater(
	theater_id INT PRIMARY KEY,
    theater_name TEXT,
	location TEXT
);

CREATE TABLE customer(
	customer_id INT PRIMARY KEY,
    customer_name TEXT,
    age INT
);

CREATE TABLE reserve(
	reserve_id INT PRIMARY KEY,
    theater_id INT,
    customer_id INT,
    t time,
	FOREIGN KEY (theater_id) REFERENCES Theater(theater_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO theater(theater_id,theater_name,location)
	VALUES(1, '메가박스', '강남'),
		 (2, '롯데시네마', '부천'),
		 (3, 'CGV', '역곡');
         
INSERT INTO customer(customer_id,customer_name,age)
	VALUES(11, '인상진', 22),
		 (22, '홍길동', 20),
		 (33, '김갑돌', 30);
         
INSERT INTO reserve(reserve_id, theater_id,customer_id,t)
	VALUES(12,1,11,'10:10:10'),
		 (23,2,22,'15:15:15'),
		 (34,3,33,'20:20:20');