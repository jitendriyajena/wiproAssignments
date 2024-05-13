set autocommit=0;

select * from emplyoee;

insert into emplyoee values(8,'virat','admin',46000.78,28,'1992-1-14','2024-1-15');
commit;
insert into emplyoee values(9,'rutu','admin',46000.78,25,'1992-1-14','2024-1-15');
savepoint a;
insert into emplyoee values(10,'dhoni','admin',46000.78,21,'1992-1-14','2024-1-15');
savepoint b;

rollback;
rollback to b;

select * from emplyoee;
start transaction;
insert into emplyoee values(11,'bob','ceo',60000.45,28,'1993-10-11','2024-2-20');
savepoint insertrcrd;
update emplyoee set dept='manager' where id=11 and age >25;
savepoint updatedept;
update emplyoee set salary=89000 where id=11 and age >25;
savepoint updatesalary;

release savepoint insertrcrd;
commit;
rollback;
rollback to insertrcrd;



