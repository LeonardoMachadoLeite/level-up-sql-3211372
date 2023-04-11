-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
select *
from Reservations r,
     Customers c
where r.CustomerID = c.CustomerID
and date like '20__-06-14%'
and PartySize = 4;
--ReservationID = 1984