insert 
	 into theater(name, location)
values ('cgv', '서울'),
       ('롯데시네마', '대구'),
       ('메가박스', '부산');

insert
	into customer(name, email)
values ('홍길동', 'customer1@gmail.com'),
       ('김이화', 'customer2@gmail.com'),
       ('김춘삼', 'customer3@gmail.com');
       
insert 
	into reservation(date, theater_id, customer_id)
values ('2023-09-22', 1, 1),
       ('2023-09-22', 2, 2),
       ('2023-09-22', 3, 1),
       ('2023-09-25', 1, 3);
       
select b.*
from theater a, reservation b
where a.id = b.theater_id;

select b.*
from customer a, reservation b
where a.id = b.customer_id;

select *
from reservation
join theater
on reservation.theater_id = theater.id;

select *
from reservation
join customer
on reservation.customer_id = customer.id;
