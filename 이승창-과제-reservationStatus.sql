select reservation.id,reservation.name,theater.name,theater.isWhere,customer.phone_num,customer.what_movie,customer.isWhen from reservation left join theater on reservation.theater_id = theater.id

left join customer on theater.id = customer.id;
