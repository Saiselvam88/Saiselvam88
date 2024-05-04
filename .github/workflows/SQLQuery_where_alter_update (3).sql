--where

select * from employee

select * from employee where name = 'kamal'

select * from employee where gender = 'male'

--Alter

--Add a column

alter table employee add state varchar(255)

select * from employee

alter table employee add country varchar(255)

select * from employee


--drop a column

alter table employee drop column country

select * from employee

--UPDATE

update employee set state = 'Tamil Nadu' where city = 'Chennai'

select * from employee

update employee set state = 'MP' where city = 'Bhopal' 
update employee set state = 'MP' where city = 'Indore'
update employee set state = 'Rajasthan' where city = 'Jaipur'

select * from employee

update employee set name = 'Aman Jay' where id = 1

select * from employee