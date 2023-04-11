-- Add a customer to the restaurant's loyalty program.

-- Use the following information to create a record:
-- Anna Smith (asmith@samoca.org)
-- 479 Lapis Dr., Memphis, TN
-- Phone: (555) 555-1212; Birthday: July 21, 1973
insert into Customers (FirstName, LastName, Email, Address, City, State, Phone, Birthday, FavoriteDish)
values ('Anna', 'Smith', 'asmith@samoca.org', '479 Lapis Dr.', 'Memphis', 'TN', '(555) 555-1212', '1973-07-21', 16);

select *
from Customers
where Email = 'asmith@samoca.org';