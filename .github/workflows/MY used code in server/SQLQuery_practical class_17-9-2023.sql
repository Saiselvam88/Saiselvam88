---Practical
Create database Facebook1

use facebook1

Create table Profile(Id int, Name varchar(255), Year int, age int, location varchar(255), Friends varchar(255))

select * from Profile

insert into profile values(1, 'Ajay', 2015, 32, 'Bhopal', 423),
(2, 'Poonam', 2011, 37, 'Dehradun', 540),
(3, 'Rajesh', 2012, 31, 'Chandigarh', 764),
(4, 'Payal', 2009, 40, 'indore', 846),
(5, 'Rohit', 2010, 39, 'surat', 102),
(6, 'Rahul', 2015, 32, 'Bhopal', 823),
(7, 'Priya', 2011, 37, 'Benaras', 840),
(8, 'Ramesh', 2012, 31, 'Chennai', 564),
(9, 'Romal', 2009, 49, 'Mumbai', 862),
(10, 'Naipul', 2010, 39, 'Kochi', 302)

Select * from Profile

insert into profile (id, name) values (11, 'sonam')

Select * from Profile

update profile set year=2014, age=31, location = 'delhi', Friends = 501 where Id = 11

Select * from Profile

select concat(Name, ' Joined facebook in ', year, ' aged  ',age,' has friends ', friends) From profile

select concat(UPPER(Name), ' Joined facebook in ', year, ' aged  ',age,' has friends ', friends) From profile

SELECT TOP(2)* FROM Profile WHERE NAME = 'AJAY'
Delete top(1) from Profile where name = 'AJAY'


Select * from Profile

alter table Profile add country varchar(255)

Select * from Profile

update Profile set Country = 'INDIA' 

Select * from Profile



__________________________