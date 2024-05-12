create database	library;
use library;

create table bookdetail
(
 id int primary key,
 name varchar(30) not null,
 publish int unique,
 price int not null
);

insert into bookdetail(id,name,publish,price) values(1,'dune',1965,499),
                                            (2,'jaws',1974,579),
                                            (3,'cut',2000,699);
                                            
select * from bookdetail;

create table checkoutdetail
(
 id int primary key auto_increment,
 name varchar(30),
 starttime int,
 endtime int,
 bookid int,
 constraint fk1 foreign key(bookid) references bookdetail(id)
);
 
insert into checkoutdetail(name,starttime,endtime,bookid) values('goldfinger',10,12,1),
																('wings',6,11,2),
                                                                ('good life',9,10,3);
                                                                
select * from checkoutdetail;

desc checkoutdetail;