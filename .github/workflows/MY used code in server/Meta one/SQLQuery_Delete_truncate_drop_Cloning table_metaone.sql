---Delete Drop Truncate

select * from employee

insert into employee values (6, 'vini', 27, 40000, 'Dehradun', 'HR', 'Female', 'Uttrakhand')


insert into employee values (7, 'vijay', 27, 50000, 'Lucknow', 'HR', 'male', 'UP')

select * from employee

---Delete

Delete from employee where name = 'Vini'

select * from employee

select * from employee where name = 'Vijay'

select Top(11) * from employee where name = 'vijay'

select Top(9) * from employee where name = 'vijay'

Delete Top(9) from employee where name = 'vijay'

select * from employee

--clone a table or create a table from one table

select * into emp1 from employee

select * from emp1

select id, name, age, city into emp2 from employee

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

delete from emp2 where city = 'Chennai'

select * from emp2

delete from emp2

select * from emp2

---Drop

drop from table emp3

drop table emp1

drop table emp2

select * from emp3

drop table emp3


