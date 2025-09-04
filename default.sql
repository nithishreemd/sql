create database demo
Use demo;
create table demo1(
sno int, name varchar(100), country varchar(3)default 'ind');
insert into demo1(sno,name,country) values (1,'kalpana','uk');
insert into demo1(sno,name)values(2,'gowtham');
select * from demo1;