-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

select *
from Loans
where PatronID = 50
order by 1 desc;

insert into Loans (BookID, PatronID, LoanDate, DueDate)
values ((select BookID
           from Books
          where Barcode = 2855934983),
        (select PatronID
           from Patrons
          where Email = 'jvaan@wisdompets.com'),
        '2022-08-25', '2022-09-08'),
       ((select BookID
           from Books
          where Barcode = 4043822646),
        (select PatronID
           from Patrons
          where Email = 'jvaan@wisdompets.com'),
        '2022-08-25', '2022-09-08');