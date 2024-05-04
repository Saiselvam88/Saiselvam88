--VIEW

Create view View_emp
as
select * from employee where gender = 'female'

select * from View_emp

insert into view_emp values (19, 'Amy',40, 30000, 'Patna', 'HR', 'Female', 'Bihar', 'India' )

select * from employee

select * from View_emp

insert into view_emp values (20, 'Anand',40, 30000, 'Patna', 'HR', 'male', 'Bihar', 'India' )

select * from employee

select * from View_emp

select * from employee

create view Gen
as
select id, name, city, department from employee

select * from gen

select * from employee
select * from project

create view All_data
as
select * from employee full join project on employee.id = project.p_id

select * from All_data




