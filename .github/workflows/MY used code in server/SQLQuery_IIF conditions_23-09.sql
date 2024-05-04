--IIF condition

select * from employee

select *, IIF(department ='IT', 'Technical', 'Non-Technical') as Employee_status from employee

select *, IIF(department in ('IT', 'HR'), 'Technical', 'Non-Technical') as Employee_status from employee

select * , IIF ((age >=30), 'Senior', 'Junior') as status from employee

select *, IIF (Department is null , 'Technical', 'Non-Technical') from employee

