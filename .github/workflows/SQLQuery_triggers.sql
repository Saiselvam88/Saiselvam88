--Triggers

create trigger Trig_1 on employee
after update 
as
begin
print 'Your record has been update'
end 

select * from employee

update employee set name = 'Raj' where id = 18


create trigger Trig_2 on employee
instead of update
as
begin
print 'You do not have permissions to update the record'
end

update employee set age = 32 where name = 'Raj'


select * from employee


create trigger Trig_4 on employee
instead of  insert, delete
as
begin
print 'You do not have permissions'
end


delete from Employee where id = 8

select * from Employee
