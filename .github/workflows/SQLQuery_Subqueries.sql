--SUBQUERIES

Select * from employee

select max(salary) from employee

--find the second highest salary from the employee table


select max(salary) from employee where salary < (select max(salary) from Employee)


--find the third higest salary from the employee table

select max(salary) from employee where salary <
(select max(salary) from employee where salary <
(select max(salary) from Employee))

--Find the fourth higest salary from the employee table
select max(salary) from employee where salary <
(select max(salary) from employee where salary <
(select max(salary) from Employee where salary <
(select max(salary) from employee)))

--Find the Nth Higest slaary from the employee table

select * from (select name,salary,dense_rank() 
over (order by salary desc)r from employee) 
as second_highest where r=N

select * from (select name,salary,dense_rank() 
over (order by salary desc)r from employee) 
as second_highest where r=2

--Find the Nth minimum salary from the employee table

select * from (select name,salary,dense_rank() 
over (order by salary asc)r from employee) 
as second_highest where r=2

