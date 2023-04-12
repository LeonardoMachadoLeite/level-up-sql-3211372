-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select *
from Books
where lower(title) like '%dracula%';

select *
from Loans
where ReturnedDate is null;

select count(*) as BooksLoaned
from Books b,
     Loans l
where b.BookID = l.BookID
and title = 'Dracula'
and ReturnedDate is null;

select a.*,
       (select count(*)
        from Books b,
             Loans l
        where b.BookID = l.BookID
        and title = 'Dracula'
        and ReturnedDate is null) as BooksLoaned
from (select b.Title, count(*) as TotalBooks
      from Books b
      where b.Title = 'Dracula'
      group by b.Title) a;