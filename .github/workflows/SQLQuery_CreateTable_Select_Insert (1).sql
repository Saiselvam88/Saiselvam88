--CREATE A New Table

create table Employee 
( ID int, Name varchar(255), Age int, salary int, City Varchar(255), Department varchar(255), 
Gender varchar(255))

--Select

select * from employee

--Insert

insert into employee values 
(1, 'Aman', 24, 50000, 'Chennai', 'HR', 'Male')

select * from employee

--insert Multiple records

insert into employee values 
(2, 'Priya', 22, 20000, 'Bhopal', 'IT', 'Female'),
(3, 'Raju', 32, 80000, 'Jaipur', 'Finance', 'Male'),
(4, 'Kamal', 27, 70000, 'Indore', 'IT', 'Male'),
(5, 'Banu', 28, 60000, 'Chennai', 'HR', 'Female')

select * from employee


--insert few columns data

insert into employee (id, name, gender) values (6, 'Upasna', 'Female')

select * from employee


---Select 

select * from employee

select ID, NAME , AGE FROM Employee

select top(3) * from employee







