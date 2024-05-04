--Constraints

select * from Employee

--NOT NULL
ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

insert into employee (name, age) Values ('Abhishek', 24)

alter table employee alter column id int null

insert into employee (name, age) Values ('Abhishek', 24)

select * from employee

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

update employee set id = 12 where name = 'Abhishek'

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NULL

select * from employee

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

insert into employee (name, age) Values ('Abhi', 29)

alter table employee alter column id int null

insert into employee (name, age) Values ('Abhi', 29)

select * from employee

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

update employee set id = 13 where name = 'Abhi'

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

select * from employee

Select Top(2) * From Employee where name = 'Abhi'
Delete Top(1) From Employee where name = 'Abhi'
select * from employee


ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

insert into employee (name, age) Values ('ARON', 26)

alter table employee alter column id int null

insert into employee (name, age) Values ('ARON', 26)

select * from employee

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

update employee set id = 14 where name = 'ARON'

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

select * from employee


--DEFAULT


select * from employee

alter table employee add country varchar(255)

select * from employee

alter table employee ADD CONSTRAINT D_name default 'INDIA' for Country

select * from employee

insert into employee (id, name) values (15, 'Ankita')

select * from employee

insert into employee (id, name) values (16, 'Anny')

select * from employee

update Employee set country = 'USA' where name = 'Anny'

select * from employee

---check
alter table employee add constraint CHK (age >= 22)

insert into employee values (17, 'Meenu', 28, 40000, 'Patna', 'IT', 'Female', 'Bihar', 'India')

select * from employee

--Unique Key

alter table employee add constraint U_1 UNIQUE(NAME)
ALTER TABLE EMPLOYEE values (18, 'Vineeta', 34, 90000, 'Haridwar', 'HR', 'Female', 'Uttrakhand', 'India')

insert into Employee values (18, 'Vineeta', 34, 90000, 'Haridwar', 'HR', 'Female', 'Uttrakhand', 'India')

insert into employee (id) values (19) 

select * from employee