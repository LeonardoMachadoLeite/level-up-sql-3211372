-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

--CustomerID = 42
select *
from Customers
where FirstName = 'Cleo'
and LastName = 'Goldwater';

--DishID = 9
select *
from Dishes
where Name like 'Quinoa%';

update Customers
set FavoriteDish = 9
where CustomerID = 42;