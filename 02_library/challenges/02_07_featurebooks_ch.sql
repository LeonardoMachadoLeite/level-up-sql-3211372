-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
select b.Title, b.Barcode
from Books b
where b.Published between 1890 and 1899
and not exists (select 1
                from Loans l
                where l.BookID = b.BookID
                and l.ReturnedDate is null)
order by b.Title;