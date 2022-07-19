use DemoDb
go

select * from employees

create table customers
(
	cust_id int primary key identity(1,1)
	, cust_name varchar(100)
)

insert into customers values('amit');
insert into customers values('sandeep');
insert into customers values('mansa');
insert into customers values('ankur');
insert into customers(cust_id,cust_name) values(10,'anku');

create table orders
(
	order_id int identity(1,1)
	, cust_id int
	--, cust_id int not null default 1
	, item varchar(100)
	foreign key(cust_id) references customers(cust_id)
	--on delete cascade
	--on delete set null
	--on delete set default
	on update cascade
)

--drop table customers
--drop table orders

insert into orders values(1,'pen');
insert into orders values(2,'mouse');
insert into orders values(3,'keys');
insert into orders values(4,'pad');

select * from customers
select * from orders

delete from customers where cust_id=1;
update customers set cust_id=25 where cust_id=2;

set IDENTITY_insert customers  on