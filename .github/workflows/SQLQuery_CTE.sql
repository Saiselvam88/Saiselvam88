--CTE (common Table emplression)

with duplicateCTE AS
(
SELECT *, ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID) AS ROWNUMBER FROM Employee
)
DELETE FROM duplicateCTE WHERE ROWNUMBER >1


select * from employee where id = 25

insert into employee values (25, 'Anjali', 32, 80000, 'Delhi', 'IT', 'Female', 'Delhi', 'India')

select * from employee