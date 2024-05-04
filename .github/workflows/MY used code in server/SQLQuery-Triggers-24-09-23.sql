---Triggers
insert into employee values
(8, 'vini', 36, 80000, 'Dehradun', 'HR', 'Female', 'Uttrakhand','India')
select * from Employee

Create trigger btrig_1 on employee
after update
as
begin
print 'Your record has been update'
end
select * from Employee

Update employee set name = 'Vineeta' where id = 18

Create trigger btrig_2 on employee
instead of update
as
begin
print 'You do not have permissions to update the record'
end

update employee set age = 32 where name = 'Vineeta'
select * from Employee


