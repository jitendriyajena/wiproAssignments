use training;

show tables;

select * from emplyoee;

select salary from emplyoee;

select id,name,salary,round(salary) from emplyoee;

select id,name,salary,round(salary),ceil(salary) from emplyoee;
select id,name,salary,round(salary),ceil(salary),floor(salary) from emplyoee;

select ceil(45.7865);
select floor(45.7865);
select round(95.7865);
select round(45.7865,3);
select pow(5,3);
select mod(5,2);

select id,name,upper(name),lower(name),length(name),substring(name,2,3) from emplyoee;

alter table emplyoee add column(dob date, doj date);

select curdate();
select curtime();

update emplyoee set dob='1990-1-20', doj='2023-4-25' where id=1;
update emplyoee set dob='1985-2-12', doj='2022-3-16' where id>=2 and id<=5;
update emplyoee set dob='1998-11-10', doj='2021-6-9' where id>=6 and id<=7;

select * from emplyoee;

select month('2002-11-10');
select dayofmonth('2002-11-10');
select year('2002-11-10');
select dayofyear('2002-11-10');
select week('2002-11-10');
select dayofweek('2002-11-10');

select adddate('2002-11-10', interval 5 day);
select subdate('2002-11-10', interval 6 day);
select subdate('2002-11-10', interval 6 year);

select id,name,dob,doj, month(dob),monthname(dob), monthname(doj) from emplyoee;
select id,name,dob,round(datediff(curdate(),dob)/365) as emp_age from emplyoee;
select id,name,dob,round(datediff(curdate(),dob)/365) as emp_age from emplyoee
where round(datediff(curdate(),dob)/365)>35;
