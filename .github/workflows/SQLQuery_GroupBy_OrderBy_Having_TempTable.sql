--Clause

select * from Employee

--Group by

select department, avg(salary) from employee group by department

select gender, avg(salary) from employee group by gender


--Order by

select * from employee

select * from employee order by name

select * from employee order by name desc

select * from employee order by gender, name 


--Having

select department, max(salary) from employee group by department


select department, max(salary) from employee group by department having max(salary) >= 70000

--Temp Tables

create table #TIGER
(ID INT, LOCATION TEXT)

INSERT INTO #TIGER VALUES (1, 'WB'), (2 ,'GUJ')

SELECT * FROM #TIGER