Create table results (id int, likes int, comments int, messages int)
Select * from results
insert into results values (1, 678, 879, 5000),
(2, 378, 679, 1000),
(3, 278, 379, 100),
(4, 58, 979, 8000),
(5, 258, 259, 700),
(6, 518, 919, 8105),
(7, 256, 229, 702)

Select * from results

select * from Profile inner join results on Profile.id = results.id

select * from Profile full join results on Profile.id = results.id

select * from Profile
Alter Table Profile alter column id int not null

alter table Profile add constraint PK_key Primary key (ID)

select * from Profile

ALTER TABLE Results ADD CONSTRAINT F_KEY FOREIGN KEY (ID) REFERENCES Profile (ID)

select * from Results

select * from Profile

insert into results values (12,5456,565,344)

insert into profile (id, name) values (12, 'Shah')

delete from profile where id = 12

delete from results where id = 12


-----------------------

sp_rename 'profile.Country', 'Country_code'


select * from profile

alter table profile alter column name char(50)

select * from profile

alter table profile drop column country_code