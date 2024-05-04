
---Functions Concat

select * from employee

select concat(name,age,city,department,state) from employee

select concat(name, '  ',age, '  ',City, '  ', department, '  ',state) from employee

select concat(name, ' age is ',age, ' belongs to  ',City, ' working in ', department, ' belongs to ',state) from employee

select concat(Upper(name), '   ',age, '  years old belongs to ',City, '  Which is in ',state, '  works in ', department, '   department ') from employee

---Concat (using Joins)

select * from project


select concat(Upper(employee.name), '   ', employee.age, '  years old belongs to ',employee.City, '  Which is in ', state, '  works in ', employee.department, '   department has been assigned in project ', project.project_name) from employee inner join project on employee.id =project.id

---Ltrim
select * from employee


update employee set name = '    Nilesh' where name ='nilesh'

select * from employee

Select Ltrim(name) from employee


--Replace

select replace('IPLWINNERCHENNAI', 'Chennai', 'GUJRAT')

select replace (Department, 'IT', 'Computer science') from employee

select replace (Department, 'Computer science', 'IT') from employee

--SUBSTRING

select substring('IPLLUCKNOWGIANTS', 4, 7)

select substring(name, 1, 4) from employee

select substring(upper(LTRIM(NAME)), 1, 4) as password from employee

select concat(substring(upper(LTRIM(NAME)), 1, 4),AGE) as Default_password From employee

--Square

select square(age) from employee

---Date Functions

Select getdate()

select datename(year, getdate())

select datename(month, getdate())

select datename(day, getdate())

select datename(DAYOFYEAR, getdate())

select datename(WEEKDAY, getdate())

select datename(MINUTE, getdate())

select datename(MILLISECOND, getdate())

select datename(NANOSECOND, getdate())

select concat(datename(year,getdate()),'-',datename(month,getdate()))