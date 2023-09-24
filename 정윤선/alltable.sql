CREATE TABLE theater (
    theater_id INT PRIMARY KEY,
    theater_name VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    contact_info VARCHAR(255)
);

CREATE TABLE reservation (
    reservation_id INT PRIMARY KEY,
    customer_id INT,
    theater_id INT,
    reservation_date DATE,
    seat_number INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (theater_id) REFERENCES theater(theater_id)
);

INSERT INTO theater (theater_id, theater_name, location) VALUES
(3, '극장 C', '도쿄'),
(6, '극장 F', '뉴욕'),
(9, '극장 I', '런던');

INSERT INTO customer (customer_id, customer_name, contact_info) VALUES
(3, '고객 3', '고객 3의 연락처'),
(6, '고객 6', '고객 6의 연락처'),
(9, '고객 9', '고객 9의 연락처');

INSERT INTO reservation (reservation_id, customer_id, theater_id, reservation_date, seat_number) VALUES
(3, 3, 3, '2023-09-15', 303),
(6, 6, 6, '2023-09-16', 606),
(9, 9, 9, '2023-09-17', 909);

SELECT reservation.reservation_id, customer.customer_name, theater.theater_name
FROM reservation
JOIN customer ON reservation.customer_id = customer.customer_id
JOIN theater ON reservation.theater_id = theater.theater_id;
