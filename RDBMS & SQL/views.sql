select * from  emplyoee;

create view organiserview as
select id,name,age from emplyoee;

select * from organiserview;

create view empview as
select id,name from emplyoee;

select * from empview;

create index nameindex on emplyoee(name);

select * from emplyoee where name='happy';
update emplyoee set dept='tester' where name='happy';
select * from emplyoee where name='happy' and dept='tester';

desc emplyoee;
alter table emplyoee drop index nameindex;