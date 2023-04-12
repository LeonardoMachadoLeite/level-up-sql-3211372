-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

select *
from Loans l
where l.BookID in (select BookID
                    from Books
                   where Barcode in (6435968624, 5677520613, 8730298424))
and l.ReturnedDate is null;

select *
from Loans l
where LoanID in (1991, 1992, 1999);

update Loans
set ReturnedDate = '2022-07-05'
where BookID in (select BookID
                    from Books
                   where Barcode in (6435968624, 5677520613, 8730298424))
and ReturnedDate is null;