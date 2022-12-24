-- Subqueries will execute first 
select * from products where unit_price>(select unit_price from products where product_id=3);
select * from products where product_id not in (select distinct product_id from order_items);
select * from customers where customer_id in (select o.customer_id from order_items oi join orders o using(order_id) where product_id=3);
-- ALL keyword
select * from invoices where invoice_total>(select max(invoice_total) from invoices where client_id=3);
select * from  invoices where invoice_total> all (select invoice_total from invoices where client_id=3);
-- Any keyword = any equals to in 
select * from clients where client_id = any(select client_id from invoices group by client_id having count(*)>=2);
-- correlated subqueries correlation with mail queire
select * from employees e where salary >(select avg(salary) from employees where office_id=e.office_id);
-- refering parent query from subquery is called correlation
-- Exists operator
select * from clients c where exists(select client_id from invoices where client_id=c.client_id);
-- subquery in select clause
select invoice_id invoice_total,(select avg(invoice_total) from invoices) as invoice_average,invoice_total-(select invoice_average) from invoices;
-- subquery in from clause we need to give alias
select * from (select invoice_id invoice_total,(select avg(invoice_total) from invoices) as invoice_average,invoice_total-(select invoice_average) from invoices) as dummy;
