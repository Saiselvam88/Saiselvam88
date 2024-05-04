use OCT04

----1. Use the inbuilt functions and find the minimum, maximum and average
--amount from the orders table
Select Min(amount) From orders
Select Max(amount) From orders
Select Avg(amount) From orders

select * from orders

---2. Create a user-defined function which will multiply the given number with 10
    CREATE FUNCTION MultiByTen(@myNumber INT)
     RETURNS INT
    AS
   BEGIN
    DECLARE @Result INT
    SET @Result = @myNumber * 10
    RETURN @Result
   END;

   --After creating function check with results---

        DECLARE @Input INT = 45;
	DECLARE @Output INT;

      SET @Output = dbo.MultiByTen(@Input);
      SELECT @Output;

---  3.Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value.

    SELECT
      CASE
        WHEN 100 < 200 THEN 'Less than 200'
        WHEN 100 > 200 THEN 'Greater than 200'
        ELSE 'Equal to 200'
    END AS Result;

---4.Using a case statement, find the status of the amount. Set the status of the amount as high amount, low amount or medium amount based upon the condition.--
select * from orders
SELECT 
       CASE
        WHEN amount > 1000 THEN 'High Amount'
        WHEN amount BETWEEN 500 AND 1000 THEN 'Medium Amount'
        ELSE 'Low Amount'
    END AS AmountStatus FROM orders;

----5.Create a user-defined function, to fetch the amount greater than then given input.

     CREATE FUNCTION Getamount(@givenAmount DECIMAL(10, 2))
		RETURNS TABLE
		AS
		RETURN (
    		SELECT * FROM orders WHERE amount > @givenAmount
		);

         --After creating function check with results---

      DECLARE @actualAmount DECIMAL(10, 2) = 4000.00;

      SELECT * FROM dbo.Getamount(@actualAmount);
