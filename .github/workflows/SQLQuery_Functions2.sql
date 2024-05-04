--Functions

select * from employee

--CONCAT

select concat(Name,age, city, department,state) from employee

select concat(Name, '  ',age, '  ', city, '  ', department, '  ', state) from employee

select concat(Name, '  age is ', age, '  belongs to ', city, '  working in ', department, '  belongs to ', state)
from employee

SELECT CONCAT(Upper(name), '  ', age ,'  years old belongs to ', city, '  which is in ', state, 
'  works in ', department, ' department') from employee

--CONCAT (Using Joins)

select * from project

select CONCAT(Upper(employee.name), '  ', employee.age, '  years old belongs to ', employee.city, '  which is in ',
state, '  works in ', employee.department, ' department has been assigned in Project ',
project.project_name) from employee inner join project on employee.id = project.P_id


--LTRIM
select * from employee

update employee set name = '    Nilesh' where name = 'nilesh'

select * from employee

select LTRIM(name) from employee


--REPLACE

select replace('IPLWINNERCHENNAI', 'CHENNAI', 'GUJRAT')

select  replace (Department, 'IT', 'Computer Science') from Employee

SELECT id, ltrim(name), age , replace (Department, 'IT', 'Computer Science') as New_department from Employee


--SUBSTRING

select substring('IPLLUCKNOWGIANTS', 4, 7)

select substring(name, 1, 4) from employee

SELECT SUBSTRING(UPPER(LTRIM(NAME)), 1, 4) as password from employee

SELECT CONCAT(SUBSTRING(UPPER(LTRIM(NAME)), 1, 4),AGE) as Default_Password FROM EMPLOYEE

--SQUARE

select square(age) from employee

--DATE FUNCTIONS

select getdate()

select datename(year, getdate())

select datename(month, getdate())

select datename(day, getdate())

select datename(DAYOFYEAR, getdate())

select datename(WEEKDAY, getdate())

select datename(MINUTE, getdate())

select datename(MILLISECOND, getdate())

select datename(NANOSECOND, getdate())

select concat(datename(year, getdate()),'-', datename(month, getdate()))

