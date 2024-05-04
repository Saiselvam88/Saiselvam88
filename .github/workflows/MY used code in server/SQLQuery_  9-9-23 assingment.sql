alter table employee drop constraint uk !
---CREATE A TABLE

--ID, Project_name, Headquarters,
---(1, 'vel', 'NJ'), (2, 'splunk', 'LA'), (3, 'vision', 'CA'), (4, 'Tel', 'WA'), (5, 'Fin', 'CA')

Create table Project (id int,  Project_name varchar(255), Headquarter Varchar(255))

insert into project values (1, 'vel', 'NJ'), (2, 'splunk', 'LA'), (3, 'vision', 'CA'), (4, 'Tel', 'WA'), (5, 'Fin', 'CA')

select * from Project

