
select * from customers where birth_date>'1990-01-01';

select * from orders where order_date>='2019-01-01';

select * from customers where state in("VA","FL","GA");

select * from customers where birth_date between '1990-01-01' and '1995-01-01';

select * from customers where last_name like 'b%';

select * from customers where last_name like 'b____y'; -- this represent  lastname starts with b and after four charaters ends with y     
-- % any number of characters
-- _ single character


-- REGularEXPresions
select * from customers where last_name REGEXP 'field$|mac|^rose'; -- ^ infront represent starts with $ and end represents ends with | or operater
select * from customers where last_name REGEXP '[gim]e'; -- can be ge or ie or me or gie....alter30xdlep30
select * from customers where last_name REGEXP '[a-h]e'; -- range of charaters from a to h

select * from customers where first_name REGEXP 'ELKA|AMBUR';
select * from customers where last_name regexp 'EY$|ON$';
select * from customers where last_name regexp '^MY|SE';
select * from customers where last_name regexp 'b[ru]';

select * from customers where phone is null;
select * from customers where phone is not null;

select * from customers order by first_name desc,last_name; -- by default select give ordered by Primary KEY\

select * from customers limit 6,3; --  Here 6 is the "offset" value results will give 3 value from 6

select * from customers order by points desc limit 2,1; -- this will give 2nd highest point 



