create database	student;
use student;

create table detail
(
 id int,
 name varchar(30),
 rollno int,
 stream varchar(30),
 age int
);

insert into detail values(1,'happy',10,'science',21),
						   (2,'roji',11,'EVS',22),
                           (3,'gudu',12,'arts',20),
                           (4,'nicky',13,'IT',25),
                           (5,'micky',14,'commerce',26);
						
select * from detail;

alter table detail add column address varchar(30);
alter table detail drop stream;
alter table detail rename column rollno to rollnum;
alter table detail modify column name varchar(60);

rename table detail to student_detail;

select id,name,age, id+70 as math_marks  from student_detail;

select * from student_detail order by age;
select * from student_detail order by age desc;

create table library
(
 id int,
 address varchar(30),
 city varchar(35),
 bookname varchar(40)
);

insert into library values(1,'angul','odisha','life of oldman'),
						   (2,'coimbature','tamilnadu','good things'),
                           (3,'kolkata','west-bengal','things to know early'),
                           (4,'banglore','karnataka','who is god ?');
select * from library;
 
alter table library add column receiver_name int;
alter table library drop address;

alter table library modify column city varchar(60);

drop table library;


 