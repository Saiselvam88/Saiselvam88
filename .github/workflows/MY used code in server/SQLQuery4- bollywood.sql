---CREATE A NEW TABLE 'Bollywood'

---(ID, MOVIE, COLLECTION, YEAR)

--(1, Pathan, 600, 2023)

---(2, Gadar2, 600, 2023)

create table Bollywood
(ID int, Movie varchar(255), Collection int, Year int)

select * from Bollywood

insert into Bollywood values 
(1, 'pathan', 600, 2023),
(2, 'Gadar2', 600, 2023)

select * from Bollywood

drop Bollywood 

select * from Bollywood
