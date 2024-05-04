--TRANSACTIONS

SELECT * FROM EMPLOYEE


begin try
begin transaction
update employee set salary=5000 where NAME = 'Aron'
update employee set salary=195/0 where name = 'Ankita'
commit transaction
Print 'transaction committed'
end try begin catch
rollback transaction
print 'transaction rolledback' end catch

select * from employee

begin try
begin transaction
update employee set salary=5000 where NAME = 'Aron'
update employee set salary=6000 where name = 'Ankita'
commit transaction
Print 'transaction committed'
end try begin catch
rollback transaction
print 'transaction rolledback' end catch

select * from employee


