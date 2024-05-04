--User defined function

create function multiplication
(
@a int,
@b int,
@c int
)
returns int as 
begin
return @a * @b * @c
end

select dbo.multiplication(3,9,9)

select dbo.multiplication (id, age, salary) from employee


---Create a function hike give new hike 20% increment

Create function hike1
(
@a int
)
returns int as
begin
return (@a *.2) + @a
end

select salary as old_salry, dbo.hike1(salary) as New_salry from employee

---Create a function SI find the simple interest (P*r*t)/100  

create function SI(@p float,@t int,@r float)returns float as beginreturn (@p*@t*@r)/100endselect dbo.SI(salary,1,7)as SI from Employee