create database Sept30
use Sept30

/* Data types
i. Numerical -> int,smallint,bigint,decimal,float
ii. String -> char,varchar,nchar,nvarchar
iii. Date -> date, time, datetime

char(5) vs varchar(5)

*/

create table try1(fname char,lname varchar)

insert into try1 values('A','A')
insert into try1 values('AA','AA')

select * from try1

--nchar vs nvarchar

--varchar vs nvarchar

--varchar -> stores non unicode character (alphabets)
--nvarchar -> stores both non unicode and unicode character (multi language)

create table try2(lang1 varchar(30),lang2 nvarchar(30))

insert into try2 values('English','English')
insert into try2 values('??????','??????')
insert into try2 values('Hindi',N'??????')

select * from try2

create table try10(lang1 varchar(30),lang2 nvarchar(30))

insert into try10 values('English','English')
insert into try10 values('தமிழ்','தமிழ்')
insert into try10 values('Hindi',N'தமிழ்')

select * from try10

--DDL, DML, DQL, TCL, DCL

/* Constraints

i. Null -> Default constraints

ii. Not Null -> we need to insert value in the column, cannot keep it blank(null) 

iii. Unique -> only unique values

iv. Primary key -> not null + unique

v. Foreign Key -> used to maintain a relation between parent and child table
                  Always refer the primary key column of the parent table
				  value inserted in the pk column can be inserted in the fk column

vi. Default -> it takes a default value, if you are not inserting a record in a column

vii. Check -> it checks the value, if values satisfied the condition then it will 
              get insert, otherwise you will get error.

*/

create table parents(p_id int primary key,
                     names varchar(30) not null,
					 email varchar(50) unique,
					 country varchar(30) default 'India',
					 Age int check(age >= 18))

insert into parents values
(1,'A','a@gmail.com','USA',34)

insert into parents(p_id,email,country,age)
values(2,'b@gmail.com','USA',35)   --not null

insert into parents(p_id,names,email,Age) values
(3,'C','c@gmail.com',25)   --default

insert into parents values(4,'D','d@gmail.com','UK',17)

select * from parents

---------------------------------Module 2----------------------------------

--1. Create a customer table which comprises of these columns: ‘customer_id’,
--   ‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’
create table Customer(customer_id int primary key,first_name varchar(50) not null,last_name varchar(30),email varchar(100) unique,address varchar(255),city varchar(30),state varchar(30),zip int)

--2. Insert 5 new records into the table
insert into customer values(1, 'a', 'aa', 'a@gmail.co', 'aa flat1 ', 'mumbai', 'Maharastra', 400601)insert into customer values(2, 'b', 'bb', 'b@gmail.co', 'bb flat2 ', 'thane', 'Maharastra', 400602)insert into customer values(3, 'c', 'cc', 'c@gmail.co', 'cc flat3 ', 'nasik', 'Maharastra', 400603)insert into customer values(4, 'd', 'dd', 'd@gmail.co', 'dd flat4 ', 'bhopal', 'Indore', 400604)insert into customer values(5, 'e', 'ee', 'e@gmail.co', 'ee flat5 ', 'nagpur', 'Maharastra', 400605)

select * from Customer

--3. Select only the ‘first_name’ and ‘last_name’ columns from the customer table
select first_name,last_name from Customer

--4. Select those records where ‘first_name’ starts with “A” and city is ‘Mumbai’.
select * from Customer where first_name like 'A%' and city = 'Mumbai'

--5. Select those records where Email has only ‘gmail’.
select * from Customer where email like '%gmail%'

--6. Select those records where the ‘last_name’ doesn't end with “A”.
select * from Customer where last_name not like '%A'


----------------------------Module 3-----------------------------------

--1. Create an ‘Orders’ table which comprises of these columns: ‘order_id’,
--  ‘order_date’, ‘amount’, ‘customer_id’.
create table orders(order_id int,
                    order_date date,
					amount int,
					cutomer_id int)

sp_rename 'orders.cutomer_id','customer_id'
--2. Insert 5 new records.
insert into orders values
(10,'2023-10-10',5000,1),
(20,'2020-06-19',7000,2),
(30,'2001-11-11',5000,3),
(40,'1998-11-19',3000,8),
(50,'2000-03-08',4000,9)

select * from orders

/* Joins


     L           R
	 1           1
	 2           2
	 3           3
	 4           8
	 5           9

i. Inner -> common values
            (1 1, 2 2, 3 3)

ii. Full -> all the values
            (1 1, 2 2, 3 3, 4 null, 5 null, null 8, null 9 )

iii. Left -> all the values from the left table and common values from the right table
             (1 1, 2 2, 3 3, 4 null, 5 null)

iv. Right -> all the values from the right table and common values from the left table
             (1 1, 2 2, 3 3, null 8, null 9)
*/

--3. Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.
select c.customer_id,c.first_name,o.order_id,o.customer_id from Customer c
inner join orders o
on c.customer_id = o.customer_id

--4. Make left and right joins on ‘Customer’ and ‘Orders’ tables on the
--   ‘customer_id’ column.
select c.customer_id,c.first_name,o.order_id,o.customer_id from Customer c
left join orders o
on c.customer_id = o.customer_id

select c.customer_id,c.first_name,o.order_id,o.customer_id from Customer c
right join orders o
on c.customer_id = o.customer_id

--5. Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column
select c.customer_id,c.first_name,o.order_id,o.customer_id from Customer c
full join orders o
on c.customer_id = o.customer_id

--6. Update the ‘Orders’ table and set the amount to be 100 where ‘customer_id’ is 3.
update orders
set amount = 100
where customer_id = 3

select * from orders

