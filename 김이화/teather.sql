CREATE TABLE theater (
    id INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT
);

CREATE TABLE reservation (
	id INTEGER PRIMARY KEY,
	date INTEGER,
    theater_id INTEGER,
    theater_name TEXT,
    customer_id INTEGER,
    customer_name TEXT
	);
    
    CREATE TABLE customer (
	id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT
    );
       
INSERT INTO theater (id, name, location)
VALUES (1, 'cgv', '서울'),
       (2, '롯데시네마', '대구'),
       (3, '메가박스', '부산');

INSERT INTO reservation (id, date, theater_id, theater_name, customer_id, customer_name)
VALUES (1, '2023-09-22', 1, 'cgv', 1, '홍길동'),
       (2, '2023-09-23', 2, '롯데시네마', 2, '김이화'),
       (3, '2023-09-24', 1, 'cgv', 3, '김춘삼'),
       (4, '2023-09-25', 3, '메가박스', 1, '김이화');
       
INSERT INTO customer (id, name, email)
VALUES (1, '홍길동', 'customer1@gmail.com'),
       (2, '김이화', 'customer2@gmail.com'),
       (3, '김춘삼', 'customer3@gmail.com');
       




