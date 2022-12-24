-- varchar(50) uses only utilises varible space but char(50) uses all 50 space fill the empty with spaces
-- without providing attributies to table name
Insert into customers
values(default,'john','smith','1990-01-01',null,'tadepalligudem 534101','tadepli','CA',default);
-- providing attributes to the table name can use any order in this way
Insert into customers (first_name,last_name,birth_date,address,city,state) values('jonny','hi','2000-01-01','addressssss','tadelppp','ap');
-- inserting multiple rows in one go
-- auto increment coloumn can be left empty or can fill null
insert into shippers(name) values('shipper1'),('shipper2'),('shipper3');
-- decimal(4,2)
insert into products(name,quantity_in_stock,unit_price) values('pen',3,5.2),('pencle',5,1.5),('paper',5,2.5);
select last_insert_id(); -- this will give last updated ids
Insert into orders(customer_id,order_date,status) values(1,'2019-01-01',1);
Insert into order_items values(last_insert_id(),2,1,2.95),(last_insert_id(),3,3,2.95);
-- copy a table to other us as
-- trancate table is used to delete the data inside the table
create table orders_archived as select * from orders;
-- insert a table to other by subquery select statement
insert into orders_archived select * from orders where order_date<'2019-01-01';
-- updating data
update invoices set payment_total=10,payment_date='2019-01-01' where invoice_id=1;
-- subquries in update statement
update invoices set payment_total=10,payment_date='2019-01-01' where client_id in(select client_id from clients where name='Myworks');
-- deleting rows
delete from invoices where invoice_id in(select invoice_id from clients where name='Myworks');









