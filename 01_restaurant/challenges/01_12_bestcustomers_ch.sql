-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select c.FirstName, c.LastName, c.Email, count(*) as AmountOrders
from Customers c,
     Orders o
where c.CustomerID = o.CustomerID
group by c.FirstName, c.LastName, c.Email
order by 4 desc
limit 6;
