-- Aggregate functions take many data and conver into on like max(),min(),avg(),sum(),count() only operate on not null values
select max(payment_date) as high, min(invoice_total) as low, avg(invoice_total) as average, sum(invoice_total*1.1) as total, count(invoice_total) as number ,count(payment_date) as datesee from invoices;
-- to count all the  records including null
select count(*) as total_count from invoices;
select count(distinct client_id) from invoices;
-- Group by clause 
select client_id,sum(invoice_total) as total_sales from invoices group by client_id order by total_sales desc;
select state,city,sum(invoice_total) as total_sales from invoices join clients using(client_id) group by state,city order by total_sales desc;
-- Having clause we can filter the data after the records are grouped
-- we can't write this query 
-- select client_id,sum(invoice_total) as total from invoices where total_sales>500 group by client_id;
select client_id,sum(invoice_total) as total from invoices  group by client_id having total>500;
-- rollup operator 
select client_id,sum(invoice_total) as total from invoices  group by client_id with rollup;

