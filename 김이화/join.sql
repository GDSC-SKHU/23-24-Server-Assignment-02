SELECT *
FROM reservation
LEFT JOIN theater
ON reservation.theater_id = theater.id;

SELECT *
FROM reservation
LEFT JOIN customer
ON reservation.customer_id = customer.id;
