--Transactions
select * from Employee
Begin try
begin transaction
update employee set salary=50000 where Name = 'Abhishek'
update employee set salary=195/0 where Name = 'Abhi'
commit transaction
Print 'transaction commited'
end try begin catch
rollback transaction
print 'transaction rollback'end catch

select * from Employee

Begin try
begin transaction
update employee set salary=50000 where Name = 'Abhishek'
update employee set salary=25000 where Name = 'Abhi'
commit transaction
Print 'transaction commited'
end try begin catch
rollback transaction
print 'transaction rollback'end catch

select * from Employee