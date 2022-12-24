-- Numeric functions
select round(5.44);
select round(5.73456464,4);
select truncate(5.73456464,4);
select ceiling(5.7);
select floor(5.8);
select ABS(-5.2);
select rand(); -- randam value between 0 and 1
-- String Functions
select length('sky');
select upper('sky');
select lower('SKY');
select ltrim('    sky'); -- removes spaces at begining
select rtrim('sky    '); -- remove trailing spaces
select trim('   sky  '); -- remove leading and trailing spaces
select left('KINDERgarden',4); -- gives left four charaters
select right('kindergarden',4); -- gives rigth four
select substring('kingfisher',3,5); -- 3 and 5 included
select locate('g','kingfisher'); -- gives first occurance
select replace('kingfisher','king','queen');
select concat('first','last');
select concat(first_name,'  ',last_name) as fullname from customers;
-- DATE function
select now(),curdate(),curtime();
select year(now());
select month(now());
select hour(now());
select dayname(now());
select monthname(now());
select extract(year from now());
-- formatting dates and times
select date_format(now(),'%D-%M-%Y');
select date_add(now(),interval 1 year);
select datediff('2019-01-01','2022-01-01');
select time_to_sec('09:00');
-- ifnull and coalesce function
select order_Id, ifnull(shipper_id,'not dkhigu') from orders;
select order_Id, coalesce(shipper_id,comments,'not assigned') from orders; -- if shipper nulll then comment will come
-- if function
-- if(expression,first,second) if express is true return first else second
select order_Id,order_date ,if(year(order_date)=year(now()),'Active','Archive') as text from orders;
-- case operator
select order_Id,
case 
    when year(order_date)=year(now()) then 'active'
    when year(order_date)='2019' then 'activeee'
    when year(order_date)='2018' then 'act'
    else 'future'
    end as catogory
    from orders;



 



