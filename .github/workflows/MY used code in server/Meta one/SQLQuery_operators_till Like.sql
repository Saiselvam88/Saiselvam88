---Operators
Select * from employee 

Insert into employee values
(8, 'Vini', 36, 80000, 'Dehradun', 'Hr', 'Female', 'Uttrakhand'),
(9, 'Anjali', 38, 60000, 'New delhi', 'Finance', 'Female', 'Delhi'),
(10, 'sandeep', 35, 50000, 'Ajmer', 'IT', 'Male', 'Rajasthan'),
(11, 'Hitesh', 27, 40000, 'Patna', 'HR', 'Male', 'Bihar')

select * from employee

---Operators

---And
select * from employee where salary = 80000 and gender = 'Male'

--OR

select * from employee where salary = 80000 or gender = 'male'

--Not

select * from employee where gender <> 'Male'


select * from employee where gender != 'Male'

select * from employee where gender <> 'female'

select * from employee where department != 'IT'

--Union

select * from employee 

select * from employee where department = 'IT'
union
select * from employee where gender = 'Female'

---Union all
select * from employee where department = 'IT'
union all
select * from employee where gender = 'Female'

---intersect
select * from employee where department = 'IT'
Intersect
select * from employee where gender = 'Female'

---Except (A-B)

select * from employee where department = 'IT'
Except
select * from employee where gender = 'Female'

select * from employee where gender = 'Female'
Except
select * from employee where department = 'IT'

---Like
Select * from employee

select * from employee where name like 'V%'

select * from employee where name like '%a'

select * from employee where name like '_a%'

select * from employee where name like '__n%'

Select * from employee

select * from employee where city like '%r'

select * from employee where age like '2%'

--Between
select * from employee where age between 22 and 32

select * from employee where salary between 10000 and 60000

--IN
select * from employee where city in ('jaipur', 'Bhopal', 'Dehradun')

select * from employee where age in (22, 27, 32, 37)
