use training;

start transaction;
create table orders
(
 id int,
 name varchar(30),
 order_date int,
 amount int
);


create table products
(
 id int,
 name varchar(30),
 quantity int,
 price int
);
 
 
insert into orders values(1,'happy',2021-11-10,500.00),
                         (2,'roji',2022-3-7,900.00),
                         (1,'happy',2021-5-13,879.16),
                         (1,'happy',2024-4-9,475.09);
                         
						
select * from orders;
commit;

insert into products values(101,'mobile',1,30000.56);
savepoint c;
insert into products values	(102,'tab',2,65000.06);
savepoint d;

select * from products;

rollback;
rollback to savepoint d;
commit;


