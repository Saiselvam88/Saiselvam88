--RollUp and Cubes 

Select department, sum(salary) from Employee Group By department

Select department, sum(salary) from employee Group By ROLLUP(DEPARTMENT) 

Select COALESCE (department,'Total') ,sum(salary) from employee Group By ROLLUP(DEPARTMENT) 

Select COALESCE (department,'TOtal'),gender, sum(salary) from employee Group By ROLLUP(DEPARTMENT, gender) 

Select COALESCE (department,'TOtal'), gender, sum(salary) from employee Group By CUBE(DEPARTMENT, gender)


select * from employee

