-- inner join
select * from order_items oi join sql_inventory.products p on oi.product_id=p.product_id;
-- self join
select * from sql_hr.employees e join sql_hr.employees m on e.reports_to=m.employee_id;
-- joining more then two tables
select o.order_id,o.order_date,c.first_name,c.last_name,os.name as status from orders o join customers c on o.customer_id=c.customer_id
join order_statuses os on o.status=os.order_status_id;
-- compound join when table has composite primary key we use this 
select * from order_items oi join order_item_notes oin on oi.order_Id=oin.order_Id and oi.product_id=oin.product_id;
-- implecite join syntax
select * from orders o,customers c where o.customer_id=c.customer_id;
-- outer joins -> left join and <- rigth join 
select c.customer_id,c.first_name,o.order_Id from customers c left join orders o on c.customer_id=o.customer_id order by c.customer_id;
-- left joint returns all the values in join condition and left table with null value
select c.customer_id,c.first_name,o.order_Id from customers c right join orders o on c.customer_id=o.customer_id order by c.customer_id;
-- right joint returns all the values in join condition andrigth table with null value
-- outer join on more then  2 tables
select c.customer_id,c.first_name,o.order_Id ,sh.name from customers c right join orders o on c.customer_id=o.customer_id 
left join shippers sh on o.shipper_id=sh.shipper_id order by c.customer_id;
-- self outer joints
select e.employee_id,e.first_name,m.first_name from sql_hr.employees e left join sql_hr.employees m on e.reports_to=m.employee_id;
-- USING key word instead of on (can be done onle when joining condition has same column name)
select o.order_id,c.first_name,sh.name as shipper from orders o join customers c using(customer_id)
left join shippers sh using(shipper_id);
-- USING key word in compound join
select * from order_items oi join order_item_notes oin using(order_id,product_id);
-- natural join(database itself make a join condation)
select o.order_Id,c.first_name from orders o natural join customers c;
-- cross joins(joins all the data from rigth to left)
select c.first_name as customer,p.name as product from customers c cross join products p order by c.first_name;
-- using "UNION" operator we can joins rows
select order_id,order_date,'Active' from orders where order_date>='2019-01-01'
union
select order_id,order_date,'Archived' as status from orders where order_date<'2019-01-01';


