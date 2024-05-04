--JOIN

SELECT * FROM EMPLOYEE

SELECT * FROM PROJECT

--INNER JOIN

SELECT * FROM EMPLOYEE INNER JOIN PROJECT ON employee.id = project.p_id

select * from contact

---Join 3 tables
select * from employee inner join project on employee.id = project.p_id inner join contact
on project.p_id = contact.id

select * from employee inner join project on employee.id = project.p_id inner join contact
on project.p_id = contact.id where employee.name = 'Amit'


select employee.id, employee.age, project.project_name, contact.contact_number from employee inner join project on employee.id = project.p_id inner join contact
on project.p_id = contact.id

-- FULL JOIN OR FULL OUTER JOIN

insert into project values (22, 'Kal', 'CA')

select * from employee full join project on employee.id = project.p_id



--LEFT JOIN

SELECT * FROM EMPLOYEE LEFT JOIN PROJECT ON EMPLOYEE.ID = PROJECT.P_ID

--RIGHT JOIN

select * from employee right join project on employee.id = project.p_id

--CROSS JOIN (A*B)

SELECT * FROM EMPLOYEE ---18 ROWS

SELECT * FROM PROJECT --7 ROWS

--(18*7)

SELECT * FROM EMPLOYEE CROSS JOIN PROJECT

