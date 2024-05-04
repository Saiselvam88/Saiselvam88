--Constraints 

select * from employee

--NOT NULL 

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

insert into employee ( name, age) values ('Abhi', 29)


alter table employee alter column id int null

insert into employee ( name, age) values ('Abhi', 29)

select * from employee

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL

update  employee set id = 13 where name = 'abhi'

ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NOT NULL


ALTER TABLE EMPLOYEE ALTER COLUMN ID INT NULL

insert into employee (name) values ('Aron')

select * from employee

alter table employee alter column id int not null

update employee set id = 14 where name = 'Aron'

select * from employee

alter table employee alter column id int not null



--DEFAULT 

SELECT * from employee

alter table employee add  country varchar(255)

select * from employee

alter table employee ADD CONSTRAINT D_name default 'INDIA' for country

select * from employee

insert into employee (id, name) values (16, 'Anny')

select * from employee

update employee set country = 'USA' where name = 'ANNY'

ALTER TABLE EMPLOYEE DROP CONSTRAINT D_NAME




