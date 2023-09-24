SELECT 
    reservations.reservations_id,
    reservations.date,
    customers.customers_name,
    customers.customers_phonenumber,
    theaters.theaters_name
FROM
    reservations
        JOIN
    customers ON reservations.customers_id = customers.customers_id
        JOIN
    theaters ON reservations.theaters_id = theaters.theaters_id
    ORDER BY reservations_id ASC;