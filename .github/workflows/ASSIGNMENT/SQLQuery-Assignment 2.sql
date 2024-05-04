create database OCT04
use OCT04

--1. Create a customer table which comprises of these columns: ‘customer_id’,
--   ‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’
create table Customer_one(customer_id int primary key,first_name varchar(50) not null,last_name varchar(30),email varchar(100) unique,address varchar(255),city varchar(30),state varchar(30),zip int)

--2. Insert 5 new records into the table
insert into Customer_one values(1, 'amit', 'aa', 'amit@yahoo.com', 'amit flat1', 'mumbai', 'Maharastra', 400601)insert into Customer_one values(2, 'benny', 'bb', 'benny@gmail.com', 'benny flat2', 'thane', 'Maharastra', 400602)insert into Customer_one values(3, 'George', 'cc', 'George@gmail.com', 'George flat3', 'SAN JOSE', 'USA', 298009)insert into Customer_one values(4, 'david', 'dd', 'david@rediff.com', 'david flat4', 'bhopal', 'Indore', 400604)insert into Customer_one values(5, 'esther', 'ee', 'esther@gmail.com', 'esther flat5', 'nagpur', 'Maharastra', 400605)

select * from Customer_one

--3. Select only the ‘first_name’ and ‘last_name’ columns from the customer table
select first_name,last_name from Customer_one

--4. Select those records where ‘first_name’ starts with “G” and city is ‘‘San Jose''.
select * from Customer_one where first_name like 'G%' and city = 'San Jose'

--5. Select those records where Email has only ‘gmail’.
select * from Customer_one where email like '%gmail%'

--6. Select those records where the ‘last_name’ doesn't end with “A”.
select * from Customer_one where last_name not like '%A'
