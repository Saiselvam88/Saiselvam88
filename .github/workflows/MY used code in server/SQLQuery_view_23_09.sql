----View
Create view View_emp
as
Select * from employee where gender = 'female'

select * from View_emp

insert into View_emp values (20, 'Amy', 40, 30000, 'patna', 'HR','Female','Bihar','India')

Select * From employee

Select * From View_emp

insert into View_emp values (21, 'Anand', 40, 30000, 'patna', 'HR','male','Bihar','India')

Select * From employee

Select * From View_emp

Select * From employee

create View Gen
as
select id, name, city, department from employee

Select * From gen

Select * From employee

Select * From Project

create view Alldata
as
select * from employee full join project on employee.id = project.pid



select * from Alldata

exec sp_helptext 'dbo.alldata'
