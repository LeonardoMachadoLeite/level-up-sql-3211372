-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select p.FirstName, p.Email, b.Title, l.DueDate
from Loans l,
     Books b,
     Patrons p
where b.BookID = l.BookID
and l.PatronID = p.PatronID
and l.DueDate = '2022-07-13'
and l.ReturnedDate is null;