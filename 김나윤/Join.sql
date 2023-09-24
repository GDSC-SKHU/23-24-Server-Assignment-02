SELECT reservation.*, theater.Location, theater.Rooms, theater.Movies, customer.CName, customer.Adress, customer.MembershipTier
FROM reservation
JOIN theater
ON reservation.THID = theater.ID
JOIN customer
ON reservation.CUSID = customer.ID