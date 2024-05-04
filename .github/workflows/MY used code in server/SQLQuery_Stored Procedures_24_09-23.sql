--Stored Procedures

--System defined sp

exec sp_helptext 'dbo.gen'

exec sp_helptext 'dbo.alldata'

exec sp_helptext 'dbo.hike1'

exec sp_helptext 'dbo.Multiplication'

exec sp_who

exec sp_who2

----User-defined stored procedures

select * from employee

create procedure Hike2024
as
begin
select id, name, salary as old_salary, .2*salary as year_hike, salary*1.2 as New_salary from employee
end

exec hike2024

exec sp_helptext 'dbo.hike2024'

--Create a sp metahike people whose salary is less than or equal to 40000 will get 40% hike
--people whose salary is greater than 40000 will get 20% hike
create procedure metahike
as
begin
select id, name, salary as old_salary, .4*salary as hike, 1.4*salary as New_salary from employee where salary <=40000
union
select id, name, salary as old_salary, .2*salary as hike,  1.2 * salary as New_salary from employee where salary > 40000
end

exec Metahike

create procedure metahike2
as
begin
select id, name, salary,IIF(salary<=40000, salary*1.40,salary*1.20) as new_salary from employee
end
exec Metahike2

create procedure metahike4
as
begin
select id, name, salary,IIF(salary<=40000, salary*1.40,IIF(salary<=60000,salary*1.30,IIF(salary>60000,salary*1.20,null)))
from Employee
end
exec Metahike4
