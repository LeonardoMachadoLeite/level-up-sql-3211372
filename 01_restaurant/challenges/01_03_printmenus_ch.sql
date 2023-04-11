-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
select Name, Price, Type, Description --*
from Dishes
order by price;

-- Create a report showing appetizers and beverages.
select Name, Price, Type, Description --*
from Dishes
where Type in ('Appetizer', 'Beverage')
order by Type;

-- Create a report with all items except beverages.
select Name, Price, Type, Description --*
from Dishes
where Type not in ('Beverage');