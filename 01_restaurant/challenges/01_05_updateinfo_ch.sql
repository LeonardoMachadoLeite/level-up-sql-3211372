-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
select *
from Customers
where FirstName = 'Taylor'
and LastName = 'Jenkins';

update Customers
set Address = '74 Pine St.', City = 'New York', State = 'NY'
where CustomerID = 26;