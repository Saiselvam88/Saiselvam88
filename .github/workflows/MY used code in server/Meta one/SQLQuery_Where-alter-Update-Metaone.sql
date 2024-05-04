--Where

Select * From Employee

select * From Employee Where Name = 'Kamal'

select * From Employee Where Gender = 'Male'

select * From Employee Where Age = 32

--Alter

---Add a Coulmn

alter table employee add State Varchar(255)
Select * From Employee

alter table employee add country Varchar(255)
Select * From Employee

---Drop a column
alter table employee drop column country
Select * From Employee

---Update

update employee set state = 'Tamil Nadu' Where city = 'Chennai'
Select * From Employee

update employee set state = 'MP' Where city = 'Bhopal' 

update employee set state = 'MP' Where city = 'Indor'

update employee set state = 'Rajasthan' Where city = 'Jaipur'

Select * From Employee

update employee set name = 'Aman Ajay' where id = 1

Select * From Employee

