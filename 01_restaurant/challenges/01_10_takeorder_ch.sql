-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

--CustomerID = 70
select *
from Customers c
where c.FirstName = 'Loretta';

insert into Orders (CustomerID, OrderDate)
values (70, '2022-09-20 14:00:00');
--OrderID = 1001
select *
from Orders o
where o.OrderDate = '2022-09-20 14:00:00';

--DishID in (4, 7, 20)
select *
from Dishes
where Name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');


select *
from OrdersDishes
where OrderID = 1001;

insert into OrdersDishes (OrderID, DishID)
values (1001, 4),
       (1001, 7),
       (1001, 20);

--Finding total cost
select od.OrderID, sum(d.Price)
from OrdersDishes od,
     Dishes d
where od.DishID = d.DishID
and od.OrderID = 1001
group by od.OrderID;