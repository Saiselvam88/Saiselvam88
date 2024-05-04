---clause

select * from employee

---Group by
select department, avg(salary) from employee group by department

select gender, avg(salary) from employee group by gender

---order by
select * from employee

select * from employee order by name

select * from employee order by name desc

select * from employee order by gender, name


---Having Clause

select department, max(salary) from employee group by department

select department, max(salary) from employee group by department having max(salary) < 90000

select department, max(salary) from employee group by department having max(salary) > 60000

select department, max(salary) from employee group by department having max(salary) >= 60000

---Temp table
create table #LION
(ID INT, LOCATION TEXT)

Insert into #LION VALUES (1, 'WB'), (2, 'GUJ')

SELECT * FROM #LION