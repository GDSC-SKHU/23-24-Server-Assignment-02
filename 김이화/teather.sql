CREATE TABLE theater (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    location TEXT
);

CREATE TABLE reservation (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	date DATE,
    theater_id INTEGER,
    customer_id INTEGER,
    foreign key (theater_id) references theater(id),
    foreign key (customer_id) references customer(id)
	);
    
    CREATE TABLE customer (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    email TEXT
    );
       
INSERT INTO theater (name, location)
VALUES ('cgv', '서울'),
       ('롯데시네마', '대구'),
       ('메가박스', '부산');

INSERT INTO reservation (date, theater_id, customer_id)
VALUES ('2023-09-22', 1, 1),
       ('2023-09-22', 2, 2),
       ('2023-09-22', 1, 3),
       ('2023-09-25', 3, 1);
       
INSERT INTO customer (name, email)
VALUES ('홍길동', 'customer1@gmail.com'),
       ('김이화', 'customer2@gmail.com'),
       ('김춘삼', 'customer3@gmail.com');
       




