--1. Create an ‘Orders’ table which comprises of these columns: ‘order_id’,
--  ‘order_date’, ‘amount’, ‘customer_id’.
create table orders(order_id int,
                    order_date date,
					amount int,
					customer_id int)


--2. Insert 5 new records.
insert into orders values
(101,'2023-10-10',5000,1),
(102,'2020-06-19',7000,2),
(103,'2001-11-11',5000,3),
(104,'1998-11-19',3000,8),
(105,'2000-03-08',4000,9)

select * from orders
--3. Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.
select c.Customer_id,c.first_name,o.order_id,o.customer_id from Customer_one c
inner join orders o
on c.customer_id = o.customer_id

--4. Make left and right joins on ‘Customer’ and ‘Orders’ tables on the
--   ‘customer_id’ column.
select c.customer_id,c.first_name,o.order_id,o.customer_id from Customer_one c
left join orders o
on c.customer_id = o.customer_id

select c.customer_id,c.first_name,o.order_id,o.customer_id from Customer_one c
right join orders o
on c.customer_id = o.customer_id

--5. Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column
select c.customer_id,c.first_name,o.order_id,o.customer_id from Customer_one c
full join orders o
on c.customer_id = o.customer_id

--6. Update the ‘Orders’ table and set the amount to be 100 where ‘customer_id’ is 3.
update orders
set amount = 100
where customer_id = 3

select * from orders

