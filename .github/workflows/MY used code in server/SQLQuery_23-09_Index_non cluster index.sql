--Index
select * from Employee

select * from Employee where department = 'IT'

---NON CLUSTER InDEX
create index Dep_IX on employee(Department)

select * from Employee

select * from Employee where department = 'HR'

create index A_ix on employee(age)

select * from Employee where salary > 50000

select * from Employee where age > 30


--CLUSTER INDEXALTER table employee add constraint p_k Primary key(id)select * from employeecreate clustered index S_IX on employee(salary)select * from employeecreate index inx on employee(gender, city)

alter table employee drop constraint pri_k

alter table project drop constraint f_ke
