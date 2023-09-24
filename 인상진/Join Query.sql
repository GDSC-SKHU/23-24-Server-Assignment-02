USE theater1;

SELECT
    reserve.reserve_id,
    theater.theater_name,
    customer.customer_name,
    customer.age,
    reserve.t 
FROM
    reserve 
INNER JOIN
     theater ON reserve.theater_id = theater.theater_id
INNER JOIN
    customer  ON reserve.customer_id = customer.customer_id;
