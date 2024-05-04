use OCT04
---1.Arrange the ‘Orders’ dataset in decreasing order of amount--
SELECT * FROM Orders
 SELECT * FROM Orders ORDER BY amount DESC

 ---2.create a table with the name ‘Employee_details1’ consisting of these columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. 
 --Create another table with the name ‘Employee_details2’ consisting of the same columns as the first table.---

 -- Create 'Employee_details1' table
CREATE TABLE Employee_details1 
    (Emp_id INT,
    Emp_name VARCHAR(255),
    Emp_salary INT)
	select * from Employee_details1 
	insert into Employee_details1  values 
(1, 'Priya', 20000),
(2, 'Raju', 80000),
(3, 'Kamal', 70000)
	select * from Employee_details1 

-- Create 'Employee_details2' table with the same columns as 'Employee_details1'
CREATE TABLE Employee_details2 
 (  Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(255),
    Emp_salary DECIMAL(10, 2));
		select * from Employee_details2 
			insert into Employee_details2  values 
(1, 'Banu', 20000),
(2, 'Amer', 80000),
(3, 'Kamal', 70000)
	select * from Employee_details2

	--- 3. Apply the UNION operator on these two tables
SELECT Emp_id, Emp_name, Emp_salary FROM Employee_details1
UNION
SELECT Emp_id, Emp_name, Emp_salary FROM Employee_details2;

--- 4. Apply the  INTERSECT operator on these two tables

SELECT Emp_id, Emp_name, Emp_salary FROM Employee_details1
INTERSECT
SELECT Emp_id, Emp_name, Emp_salary FROM Employee_details2;

--- 5. Apply the   EXCEPT operator on these two tables

SELECT Emp_id, Emp_name, Emp_salary FROM Employee_details1
EXCEPT
SELECT Emp_id, Emp_name, Emp_salary FROM Employee_details2;