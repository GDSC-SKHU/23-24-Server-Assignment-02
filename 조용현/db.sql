use reservation;
create table customer(
    id int,
    name varchar(45),
    email varchar(45),
    primary key(id)
);

create table theater(
    id int,
    name varchar(45),
    location varchar(45),
    primary key(id)
);

create table reservation(
    id int,
    customer_id int,
    theater_id int,
    foreign key(customer_id) references customer(id),
    foreign key(theater_id) references theater(id),
    primary key(id)
);

INSERT INTO theater(id,name,location)
VALUES(1,'cgv','의정부'),
      (2,'매가박스','노원'),
      (3,'롯데시네마','일산');

INSERT INTO customer(id, name, email)
VALUES(4,'조용현','의정부'),
      (5,'손현우','서울'),
      (6,'유영선','의정부');

INSERT INTO reservation(id, customer_id, theater_id)
VALUES(7,4,1),
      (8,5,2),
      (9,6,3);

SELECT *
FROM reservation
LEFT JOIN theater
ON reservation.theater_id  = theater.id;

SELECT *
FROM reservation
LEFT JOIN customer
ON reservation.customer_id  = customer.id;