select * from employees;


select * from dependents;




select 
	e.*
	,d.department_name
	,d.location_id
from employees e
	left join departments d
		on e.department_id = d.department_id

select d.*
	,dep.*
from departments d
	left join dependents dep
		on d.department_id = dep.dependent_id


select * from employees;

select Max(salary) 
from employees 
where 
	salary<
	(select Max(salary)
	from employees
	where 
		salary<
		(select Max(salary)
		from employees) 
	)

select * from employees;

with result as(
select
	*
	,DENSE_RANK() over(order by salary desc) as dense_n
	,RANK() over(order by salary desc) as rank_n
	,row_number() over(order by salary desc) as row_n
	from employees
)
select distinct salary as max_salary from result where dense_n=3


select * from employees where CHARINDEX('a',REVERSE(first_name))=1

select * from employees where CHARINDEX('a',first_name)=1 and CHARINDEX('e',REVERSE(first_name))=2

select * from employees where first_name like 'a%e_'

ALTER TABLE dbo.employees
DROP COLUMN INSERTED_DATE;

ALTER TABLE employees ADD INSERTED_DATE Date DEFAULT DATEADD(day, -1, CAST(GETDATE()));

SELECT DATEADD(day, -1, CAST(GETDATE() AS date)) AS YesterdayDate;

update employees set INSERTED_DATE= DATEADD(day, -1, GETDATE());

drop table amit;

create table amit(id int);
insert into amit values(1);
insert into amit values(2);
insert into amit values(3);
insert into amit values(4);

select * from amit;

ALTER TABLE amit
ADD INSERTED_DATE Date not null
DEFAULT DATEADD(day, -1, GETDATE())
with values;