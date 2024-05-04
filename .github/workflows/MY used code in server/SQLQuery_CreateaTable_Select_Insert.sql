---Create a new table
Create table Employee
(ID int, Name Varchar(255), Age int, Salary int, city Varchar(255), Department Varchar(255), Gender Varchar(255))

--Select
select * from Employee

---Insert
Insert into Employee values 
(1, 'Aman', 24, 50000, 'Chennai', 'HR', 'Male')

Select * from Employee

---Insert multiple records

Insert into Employee values
(2, 'Priya', 22, 20000, 'Bhopal', 'IT', 'Female'),
(3, 'Raju', 32, 80000, 'Jaipur', 'Finance', 'Male'),
(4, 'Kamal', 27, 60000, 'Indor', 'IT', 'Male'),
(5, 'Banu', 28, 60000, 'Chennai', 'HR', 'Female')

Select * from Employee

---Insert  Few columns data

Insert into Employee (id,Name, Gender) values (6, 'Upasana', 'Female')

Select * from Employee

--Select
Select * from Employee

Select ID, NAME, Age From Employee

select top(2) * From Employee
