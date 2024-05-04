---DELETE Drop Truncate

select * from employee

insert into employee values (6, 'Vini', 27, 40000, 'Dehradun', 'HR', 'Female', 'Uttrakhand')

insert into employee values (7, 'Vijay', 27, 50000, 'Lucknow', 'HR', 'male', 'UP')

SELECT * FROM EMPLOYEE

--DELETE

DELETE FROM EMPLOYEE WHERE NAME = 'VINI'

SELECT * FROM EMPLOYEE

SELECT * FROM EMPLOYEE WHERE NAME = 'VIJAY'

SELECT TOP(11)* FROM EMPLOYEE WHERE NAME = 'VIJAY'

SELECT TOP(10) * FROM EMPLOYEE WHERE NAME = 'VIJAY'

Delete top(10) from employee where name = 'vijay'

select * from employee

--Clone a table or create a table from one table

select * into Emp1 from employee

select * from emp1

select id, name , age, city into emp2 from employee

select * from emp2

select * into emp3 from emp1 where gender = 'female'

select * from emp3

--Truncate 

select * from emp1

truncate table emp1

select * from emp1

select * from emp2

delete from emp2 where city = 'chennai'

select * from emp2

delete from emp2

select * from emp2

--drop

drop table emp1

drop table emp2

select * from emp3

drop table emp3



