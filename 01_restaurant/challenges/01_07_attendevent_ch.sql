-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

insert into InvitationResponse (CustomerID, PartySize)
values ((select CustomerID
           from Customers
          where Email = 'atapley2j@kinetecoinc.com'),
        4);

update InvitationResponse
set PartySize = 4
where CustomerID = 92;

select * from InvitationResponse;
select * from Customers
where CustomerID = 92;