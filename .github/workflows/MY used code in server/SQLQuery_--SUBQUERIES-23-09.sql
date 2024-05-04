--SUBQUERIES

select * from employee

--find the second highest salary from the employee table

select max(salary) from employee

select max(salary) from employee where salary < (select max(salary) from employee)

--find the third highest salary from the employee table


select max(salary) from employee where salary < 
(select max(salary) from employee where salary <
(select max(salary) from employee where salary))

--find the fourth highest salary from the employee table
select max(salary) from employee where salary < 
(select max(salary) from employee where salary <
(select max(salary) from employee where salary <
(select max(salary) from employee)))

--find the Nth highest salary from the employee table