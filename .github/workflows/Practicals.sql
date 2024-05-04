--Practical

--Create a database Facebook

--use Facebook

---
 --Create a table Profile 
 --(ID int, Name varchar(255), Year int, age int, location varchar(255), Friends varchar(255))
  
  --(1, 'Ajay', 2015, 32, 'Bhopal', 423)
  --(2, 'Poonam', 2011, 37, 'Dehradun', 540)
  --(3, Rajesh, 2012, 31, 'Chandigarh', 764)
  --(4, Payal, 2009, 40, 'Indore', 846)
  --(5, Rohit, 2010, 39, Surat, 102)
  --(6, Rahul, 2015, 32, 'Bhopal', 823)
  --(7, 'Priya', 2011, 37, 'Banaras', 840)
  --(8, Ramesh, 2012, 31, 'Chennai', 564)
  --(9, Romel, 2009, 40, 'Mumbai', 846)
  --(10, Nipul, 2010, 39, Kochi, 302)


  create database Facebookuse facebookcreate table profile(ID int, Name varchar(255),year int, Age int,location varchar(255), Friends varchar(255))


select * from profile

insert into profile values(1,'Ajay',2015,32,'Bhopal',423),(2,'Poonam',2011,37,'Dehradun',540),(3,'Rajesh',2012,31,'Chandigarh',764),(4,'Payal',2009,40,'Indore',846),(5,'Rohit',2010,39,'Surat',102),(6,'Rahul',2015,32,'Bhopal',823),(7,'Priya',2011,37,'Benaras',840),(8,'Ramesh',2012,31,'Chennai',564),(9,'Romel',2009,49,'Mumbai',846),(10,'Nipul',2010,39,'Kochi',302)


select * from profile

--insert into profile data just id 11 and name Sonam

insert into profile (id, name) values (11, 'sonam')

select * from profile

--For Sonam's record enter other values year 2014 age 31 location Delhi, friends 501

update Profile set year=2014,age=31, location='Delhi',friends=501 where id=11

select * from profile

--Data required in below format
--Ajay joined Facebook on 2015 aged 32 has friends 423

select concat(name ,' joined Facebook on ',year,' aged ',age,'  has friends ',friends) FROM Profile

--AJAY joined Facebook on 2015 aged 32 has friends 423

select concat (upper(name), '  joined facebook in ', year, '  at the ', age, '  and has freinds numbered ', friends) from profile


select * from profile

--Add a column Country in profile table 

alter table Profile add country varchar(255)

select * from profile

--Country to India

UPDATE Profile  SET country='India'

select * from profile

---------------------------------------------------------------------------------------

---Create new table Results
(id int, Likes int, comments int, messages int)


(1, 10001, 4875, 3435)
(2, 4324,23324,2332)
(3, 47474, 474754,348348)
(4,4647,68659,47484)
(5,3553.56646,455)
(6,55,3443,3444)
(7,4433,45556,3334)

create table results (id int,likes int,comments int ,messages int)

select * from results

insert into results values (1, 679, 500, 2000),(2, 345, 233, 566),(3, 667, 770, 1223),(4, 556, 345, 666),(5, 554, 332, 776),(6, 225, 669, 785),(7, 225, 685, 745)

select * from results

---Create a inner join between profile and results table
--craete a full join between profile and results table

select * from profile inner join results on profile.id = results.id

select * from profile p inner join results r on p.id = r.id

select * from Profile full join results on Profile.id = results.id

--Create a primary key on ID column on Profile Table key name should PK_KEY

Alter table PROFILE alter column id int not null

alter table profile add constraint pk_key primary key (ID)

--Create a forigne key on ID column on Results table refrence it to primary key on Profile table F_key

ALTER TABLE results ADD CONSTRAINT F_key FOREIGN KEY (id) REFERENCES profile(id);

select * from profile

select * from results

insert into results values (12,4433,332,344)

insert into profile (id, name) values (12, 'Shah')

delete from profile where id = 12

delete from results where id = 12

----------------------------------------------------

--Change column name Country to County_name

sp_rename 'profile.country', 'Country_code'

select * from profile

--change the datatype of name from varchar to char in profile table

alter table profile alter column name char(50)











