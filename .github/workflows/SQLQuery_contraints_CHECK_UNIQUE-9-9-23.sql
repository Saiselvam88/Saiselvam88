--CONSTRAINT

select * from employee

--check

alter table employee add constraint CHK1 check (age >= 22 and salary >= 20000)

insert into employee values (16, 'Meenu', 18, 40000, 'Patna','IT', 'Female', 'Bihar', 'India')


insert into employee values (16, 'Meenu', 28, 15000, 'Patna','IT', 'Female', 'Bihar', 'India')

select * from employee


--Unique Key

ALTER TABLE EMPLOYEE ADD CONSTRAINT U_1 UNIQUE(NAME)

insert into employee values (17, 'Vineeta', 34, 90000, 'Haridwar', 'HR', 'Female', 'Uttrakhand', 'India')

insert into employee (id) values (19)


alter table employee add constraint U_11 unique(ID)

DELETE TOP(1) FROM EMPLOYEE WHERE ID = 16

SELECT * FROM EMPLOYEE