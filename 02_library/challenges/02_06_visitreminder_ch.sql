-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select p.*, r.AmountOfLoans
from (select l.PatronID, count(*) as AmountOfLoans
      from Loans l
      group by l.PatronID
      order by 2
      limit 9) r,
     Patrons p
where r.PatronID = p.PatronID;