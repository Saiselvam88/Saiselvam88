--OPERATORS 

--AND

select * from employee where salary = 80000 and gender = 'male'

--OR

SELECT * from employee where salary = 80000 or gender = 'male'


--NOT

SELECT * FROM EMPLOYEE WHERE GENDER <> 'MALE'

SELECT * from employee where gender != 'male'

select * from employee where gender <> 'female'

select * from employee where department != 'it'


--UNION

SELECT * FROM EMPLOYEE

select * from employee where department = 'IT'
union
SELECT * from employee where gender = 'Female'


--UNION ALL

select * from employee where department = 'IT'
UNION ALL
SELECT * from employee WHERE gender = 'female'


--INTERSECT

select * from employee where department = 'IT'
Intersect
select * from employee where gender = 'Female'


--EXECPT (A-B)

select * from employee where department = 'IT'
EXCEPT
select * from employee where gender = 'Female'


SELECT * from employee where gender = 'female'
except
select * from employee where department = 'IT'


--LIKE

SELECT * from employee

select * from employee where name like 'V%'

select * from employee where name like '%a'

select * from employee where name like '_a%'

select * from employee where name like '__n%'

select * from employee where city like '%r'

select * from employee where age like '2%'


--BETWEEN


SELECT * FROM EMPLOYEE WHERE AGE BETWEEN 22 AND 32

SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 10000 AND 60000

--IN

select * from employee where city in ('Jaipur', 'Bhopal', 'Dehradun')

select * from employee where age in (22, 27, 32, 37)



