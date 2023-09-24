USE movie2;

SELECT t.*, r.date
FROM theaters t
RIGHT JOIN reservations r ON t.id = r.theater_id;