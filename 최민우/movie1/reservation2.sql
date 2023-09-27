USE movie;

SELECT c.*, r.date
FROM customers c
RIGHT JOIN reservations r ON c.id = customer_id;