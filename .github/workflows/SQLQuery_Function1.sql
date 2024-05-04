--FUNCTIONS

--SYSTEM-DEFINED-FUNCTIONS

--MAX

select * from employee

select max(salary) from Employee

select max(salary) as Maximum_salary from employee

--MIN

select min(salary) from employee


--avg

select avg(salary) from employee

--count

select count(*) from employee

--Sum

select sum(salary) from employee

select sum(salary) as Total from employee


--Lower

select name from employee

select lower(name) from employee

--UPPER

select name from employee

select upper(name) from Employee

select * from employee

--Reverse

select reverse(name) from employee

select reverse(upper(name)) from employee


--len

select len(name) from employee

select name, len(name), department, len(Department) from employee


