---Primary Key

select * from Employee

Alter Table Employee alter column id int not null

alter table employee add constraint pri_k Primary key (ID)

select * from Employee

insert into employee values (6, 'Nilesh', 39, 90000, 'Patna', 'IT', 'Male', 'Bihar', 'India')

--update Employee set id = 5 where id = 6-

---Foreign Key
 
select * from employee -- Primary key on ID column

select * from Project -- Foreign key

ALTER TABLE PROJECT ADD CONSTRAINT F_KE FOREIGN KEY (ID) REFERENCES EMPLOYEE (ID)


insert into project  values (6, 'olt', 'WA')

select * from employee

select * from Project

insert into project values (20, 'Calo', 'WA')

ALTER TABLE PROJECT ADD CONSTRAINT F_KE FOREIGN KEY (ID) REFERENCES EMPLOYEE (ID)

insert into employee values (20, 'Ananya', 32, 90000, 'Merrut', 'HR', 'FeMale', 'UP', 'India')

select * from employee

ALTER TABLE PROJECT ADD CONSTRAINT F_KE FOREIGN KEY (ID) REFERENCES EMPLOYEE (ID)
select * from employee
select * from Project

delete from employee where id = 20


delete from Project where id = 20

delete from employee where id = 20

select * from employee

select * from Project