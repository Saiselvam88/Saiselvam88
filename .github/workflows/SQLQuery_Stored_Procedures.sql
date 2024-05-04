--Stored Procedures

--system defined sp 

exec sp_helptext 'dbo.all_data'

exec sp_helptext 'dbo.hike'

exec sp_helptext 'dbo.Multiplication'

exec sp_who

exec sp_who2

kill 59

-----User-defined Stored Procedures 

select * from employee

create procedure Hike2024
as
begin
select id, name, salary as old_salary, .2*salary as Year_hike, salary*1.2 as New_salary from employee
end

exec Hike2024

exec sp_helptext 'dbo.hike2024'



--Create a sp MetaHike people whose salary is less than or equal to 40000 will get 40% hike
--people whose salary is greater than 40000 will get 20% hike 


create procedure Metahike
as
begin
select id, name , salary as old_salary,  .4*salary as Hike, 1.4*salary as New_Salary 
from employee where salary <=40000
union
select id, name , salary as old_salary, .2*salary as Hike, 1.2 * salary as New_salary
from employee where salary > 40000
end 

exec Metahike

create procedure MetaHike2asbeginselect id, name, salary, IIF(salary<=40000,salary*1.40,salary*1.20) as new_salary from Employeeend

exec Metahike2


create procedure MetaHike4asbeginselect id,name,salary, IIF(salary<=40000,salary*1.40,IIF(salary<=60000,salary*1.30,iif(salary>60000,salary*1.20,null))) from Employeeend

exec MetaHike4

drop procedure dbo.MetaHike3

