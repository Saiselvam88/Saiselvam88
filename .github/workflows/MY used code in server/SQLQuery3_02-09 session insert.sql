--create a New Table

create table Employee
(ID int, Name Varchar(255), Age int, salary int, City Varchar(255), Department varchar(255), Gender Varchar(255))

--select
select * from Employee
use Meta

--Insert
insert into employee values
(1,'Selvam', 35, 500000, 'Madurai', 'HR', 'Male')
select * from Employee
--insert Multiple records
insert into employee values
(2, 'Priya', 22, 20000, 'Bhopal', 'IT', 'Female'),
(3, 'Raju', 32, 80000, 'Jaipur', 'Finance', 'Male'),
(4, 'Kamal', 27, 70000, 'Indore', 'IT', 'Male'),
(5, 'Banu', 28, 60000, 'Chennai', 'HR', 'Female')
select * from Employee
--insert Few columns data
insert into employee (id, name, gender) values (6, 'Upasana', 'Female')
select * from employee

--Select
select * from employee
select ID, Name, Age From Employee

select top(3) * from employee

--where
select * from employee

select * from employee Where name = 'Kamal'

select * from employee where gender = 'male'

--Alter

alter table employee add state varchar(255)

select * from employee

alter table employee add country varchar(255)

select * from employee

--drop a column
alter table employee drop column country

select * from employee

--Update

update Employee set state = 'Tamil Nadu' where city = 'chennai'
select * from employee

update Employee set state = 'MP' where city = 'Bhopal'
update Employee set state = 'MP' where city = 'Indore'
update Employee set state = 'Rajasthan' where city = 'jaipur'

select * from employee

