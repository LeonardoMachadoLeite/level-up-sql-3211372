-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

--Report 1
select q.Published, count(*) as BooksPublished
from (select distinct b.Published,
                      b.Author,
                      b.Title
        from Books b) q
group by q.Published
order by 2 desc, 1;

--Report 2
select b.Title, b.Author, b.Published, count(l.LoanID) as AmountOfLoans
from Books b,
     Loans l
where b.BookID = l.BookID
group by b.Title, b.Author, b.Published
order by 4 desc, 1
limit 5;