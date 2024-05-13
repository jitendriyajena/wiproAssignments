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

