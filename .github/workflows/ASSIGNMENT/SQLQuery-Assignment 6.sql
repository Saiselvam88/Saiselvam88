use OCT04
--1. Create a view named ‘customer_san_jose’ which comprises of only those
--customers who are from San Jose--

CREATE VIEW Customer_one_san_jose AS
WHERE City = 'San Jose';
SELECT *FROM Customer_one_san_jose

--2.Inside a transaction, update the first name of the customer to Francis
-- where the last name is Jordan:

BEGIN TRANSACTION;
UPDATE Customer_one
insert into Customer_one values(6, 'usain', 'jordan', 'jordan@gmail.com', 'esther flat5', 'reo', 'brazil', 400605)
SELECT *FROM Customer_one

---a. Rollback the transaction:
BEGIN TRANSACTION;
UPDATE Customer_one
SET first_name = 'Francis'
WHERE Last_Name = 'Jordan';
ROLLBACK;
SELECT *FROM Customer_one

--b. Set the first name of customer to Alex, where the last name is Jordan
BEGIN TRANSACTION;
UPDATE Customer_one
SET first_name = 'Alex'
WHERE Last_Name = 'Jordan';
COMMIT;
SELECT *FROM Customer_one

---3. Inside a TRY... CATCH block, divide 100 with 0, print the default errormessage.

BEGIN TRY
    SELECT 100 / 0;
END TRY
BEGIN CATCH
       PRINT ERROR_MESSAGE();
END CATCH
SELECT *FROM Customer_one


--4. Create a transaction to insert a new record to Orders table and save it.
BEGIN TRANSACTION;
insert into orders values
(107,'2023-09-06',800,7)
SELECT *FROM orders
COMMIT;

